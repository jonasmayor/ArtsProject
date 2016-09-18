module Spree
  User.class_eval do

    has_many :products, dependent: :destroy

    def fullname
      "#{billing_address.firstname} #{billing_address.lastname}"
    end


  end
end
