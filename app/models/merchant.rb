class Merchant < ApplicationRecord

  def initialize(merchant_info)
    @name = merchant_info[:name]
    @address = merchant_info[:address]
    @city = merchant_info[:city]
    @state = merchant_info[:state]
    @zip = merchant_info[:zip]
  end
end
