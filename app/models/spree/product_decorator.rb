module Spree
  Product.class_eval do

    belongs_to :user, class_name: 'Spree::User'

    validates_presence_of :user_id

    def author
      self.user.fullname
    end

  end
end
