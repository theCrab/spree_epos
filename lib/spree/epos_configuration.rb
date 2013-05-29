module Spree
  module EposConfiguration < Preferences::Configuration
    # I am not convinced this is the right approach because its set in stone.
    # Maybe it should be left to admins to create terminals and assign them this configs
    # That way we can create more terminals without relying on installing a copy of spree on each of them
    #
    # Give the terminal a name
    preference :number, :string

    # The location of the terminal. Which shop_branch is it in?
    preference :location, :string

    # The IP Address of the terminal
    preference :ip_address, :string

    # The IP Address PORT of the terminal
    preference :ip_port, :string

  end
end