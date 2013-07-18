module Spree
  module Admin
    class EposController < Admin::BaseController
      before_filter :load_data, except: [:index, :new, :create]

      def index
        @eposes = Spree::Epos.order('location DESC').page(params[:page])
      end

      def new
        @epos = load_branch.eposes.build
      end

      def create
        @epos = load_branch.eposes.create(params[:epos])
      end

      def edit
      end

      def update
        if @epos.update_attibutes(params[:epos])
          respond_with(@epos) do |format|
            format.html { redirect_to epos_url(@epos) }
            format.json { render json: @epos.to_json }
          end
        else
          flash[:error] = Spree.t('error.messages.could_not_create_terminal')
          respond_with(@epos) do |format|
            format.html { redirect_to @epos ? edit_admin_epos_url(@epos) : admin_epos_url }
          end
        end
      end

      def show
      end

    private
      def load_data
        @epos ||= Spree::Epos.find(:first, params[:id])
      end

      def load_branch
        @branch ||= Branch.find(:first, id: params[:branch_id])
      end
    end
  end
end
