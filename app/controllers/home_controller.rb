class HomeController < ApplicationController

  def index
    if params[:set_locale]
      redirect_to home_path(locale: params[:set_locale])
    end
    @links=[{:title => 'Colecciones', :href => '#collections'},
            {:title => 'Nuevos Productos', :href => '#new_products'},
            {:title => 'Artistas más vendidos', :href => '#most_selled'},
            {:title => 'Especiales', :href => '#specials'}]
  end

  private
  def load_example_data
    @product=[]
  end
end
