Deface::Override.new(:virtual_path => "spree/admin/products/_form",
                     :name => "add_user_to_product",
                     :insert_bottom => "[data-hook='admin_product_form_left']",
                     :partial => "spree/admin/products/users",
                      :disabled => false)
