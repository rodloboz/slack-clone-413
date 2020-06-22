class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected # similar to private, it's hidden from public

  # Arrays
  # ["a", "b"]
  # %w[a b]

  def configure_permitted_parameters
    # Devise implementation of Strong Params
    # keys is an array of symbols
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[nickname])
  end
end
