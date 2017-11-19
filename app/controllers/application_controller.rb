class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_current_user
  before_action :set_current_user_admin

   def set_current_user
   	@current_user = User.find_by(id: session[:user_id])
   end

   def set_current_user_admin
   	@current_user_admin = Admin.find_by(id: session[:admin_id])
   end

   def authenticate_user
   	if @current_user == nil

   		flash[:notice] = "ログインが必要です"
   		redirect_to("/login")
   	end
   end

   def authenticate_user_admin
   	if @current_user_admin == nil
   		flash[:notice] = "ログインが必要です"
   		redirect_to("/login_admin")
   	end
   end

   def authenticate_user_and_admin
   	if @current_user_admin == nil
   	  if @current_user == nil
   		  flash[:notice] = "ログインが必要です"
   		  redirect_to("/login")
   	  end
   	end
   end

   def ensure_correct_user
   	if @current_user_admin == nil
   	  if @current_user.id != params[:id].to_i
   		  flash[:notice] = "閲覧権限がありません"
   		  redirect_to("/login")
   	  end
   	end
   end

   def cell_update

   end
end