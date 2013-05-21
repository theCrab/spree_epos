class Epos < ActiveRecord::Base
  attr_accessible :branch_id,
                  :ip_address,
                  :ip_port,
                  :name,
                  :number

  #==================================================
  # Associations

  belongs_to :branch, class_name: "Spree::StockLocation", foreign_key: "branch_id"

  #==================================================
  # Validations
  validates_associated    :branch_id
  validates :name,        presence: true
  validates :ip_address,  presence: true
  validates :ip_port,     presence: true
  validates :number,      presence: true
end
