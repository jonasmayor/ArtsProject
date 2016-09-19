Spree::UsersController.class_eval do

  def show
    if !params[:id]
      @orders = @user.orders.complete.order('completed_at desc')
    else
      @products = @user.products
    end
  end


  def load_object
    if params[:id]
      @user = Spree::User.find(params[:id])
    else
      @user ||= spree_current_user
      authorize! params[:action].to_sym, @user
    end
  end


end
