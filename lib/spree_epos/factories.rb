FactoryGirl.define do
  # Define your Spree extensions Factories within this file to enable applications, and other extensions to use and override them.
  #
  # Example adding this to your spec_helper will load these Factories for use:
  # require 'spree_epos/factories'
  factory :terminal, class: Spree::Epos do
    store
    name 'Motorrola'
    number 'LN6-001'
    ip_address '192.168.2.37'
    ip_port '44444'

  end

  factory :store, class: Spree::store do
    name 'Lincoln High Street'
    code 'lincoln_high_street'
    domains 'www.example.com'
  end
end
