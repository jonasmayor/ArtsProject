module Spree::HomeHelper
  def get_next_link
    @links.push @links[0]
    @links.delete_at 0
  end
end
