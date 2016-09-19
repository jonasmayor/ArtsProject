module Spree
  Image.class_eval do

    has_attached_file :attachment

    validates_attachment :attachment,
      :presence => true,
      :content_type => { :content_type => %w(image/jpeg image/jpg image/png image/gif) }

  end
end
