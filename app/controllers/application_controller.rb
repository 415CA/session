class ApplicationController < ActionController::Base
#Add this in order to have custom paramaters in the sign up sheet
    #   before_action :configure_permitted_parameters, if: :devise_controller?

    # protected

    #     def configure_permitted_parameters
    #         devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password) }
    #         devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :current_password) }
    #     end

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :age, :bio, :borough])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :age, :bio, :borough])
    end

    def save_favorite
      @current_shop = SkateShops.find(params[:id])
      current_user.shops << @current_shop
      redirect_to user_path
    end


end
