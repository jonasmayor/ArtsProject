module Spree
  Image.class_eval do


    has_attached_file :attachment,
                      styles: { mini: '48x48>', small: '151x151#', product: '321x317#', large: '703x703#' },
                      default_style: :product,
                      url: '/spree/products/:id/:style/:basename.:extension',
                      path: ':rails_root/public/spree/products/:id/:style/:basename.:extension',
                      convert_options: { all: '-strip -auto-orient -colorspace sRGB' }
    validates_attachment :attachment,
      :presence => true,
      :content_type => { :content_type => %w(image/jpeg image/jpg image/png image/gif) }

  end
end
