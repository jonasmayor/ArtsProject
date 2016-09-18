module Spree
  BaseHelper.class_eval do


    # def method_missing(taxon_permalink, *args, &block)
    #   if taxon = taxon_from_method_name(taxon_permalink)
    #     define_taxon_method(taxon)
    #     self.send(method_name, *args)
    #   else
    #     super
    #   end
    # end
    #
    # def define_taxon_method(taxon)
    #   self.class.send :define_method, "taxon_#{taxon.permalink.split('/').last}_products" do |product, *options|
    #     taxon.products
    #   end
    # end
    #
    # def taxon_from_method_name(taxon_permalink)
    #   Spree::Taxon.find_by_permalink('categories').descendants.each do |t|
    #     permalink = t.permalink.split('/').last
    #     if permalink == taxon_permalink
    #       return t.first
    #     end
    #   end
    # end

  end
end
