class ApplicationController < ActionController::Base
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_email!, :except => [:show, :index]
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:blog).permit(:title, :url, :description)
    end
end
