module Spree::HomeHelper
  def get_next_link
    @links.push @links[0]
    @links.delete_at 0
  end

  def taxons(pos)
    Spree::Taxon.find_by_permalink('categories').descendants[pos].permalink.split('/').last
  end

  def taxon_collection_products
    Spree::Taxon.find_by_permalink('categories/collections').products
  end

  def taxon_new_products_products
    Spree::Taxon.find_by_permalink('categories/new-products').products
  end

  def taxon_salest_products
    Spree::Taxon.find_by_permalink('categories/salest-artists').products
  end

  def taxon_deals_products
    Spree::Taxon.find_by_permalink('categories/deals').products
  end

end
