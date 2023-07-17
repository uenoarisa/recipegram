class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  private 
  # このメゾットをコントローラーの中でしか呼び出さないようにする
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
  # 新規登録でusernameを追加できるようにする。
end
