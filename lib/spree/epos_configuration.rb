module Spree
  module EposConfiguration < Preferences::Configuration
    # Give the terminal a name
    preference :number, :string

    # The location of the terminal. Which shop is it in?
    preference :location, :string

    # The IP Address of the terminal
    preference :ip_address, :string

    # The IP Address PORT of the terminal
    preference :ip_port, :string

  end
end