class QyoController < ApplicationController
  before_action :authenticate_user_and_admin,{only: [:show]}
  before_action :authenticate_user_admin,{only: [:update]}
  before_action :ensure_correct_user,{only: [:show]}

  def login_form
  end

  def login
    @user = User.find_by(enum: params[:enum],
                         password: params[:password])
    if @user
      session[:user_id] = @user.id
      flash[:notice] = "ログインしました"
      redirect_to("/qyo/#{@user.id}")
    else
      @error_message = "※社員番号またはパスワードが間違っています"
      @enum = params[:enum]
      @password = params[:password]
      render("qyo/login_form")
    end
  end

  def login_form_admin
  end

  def login_admin
    @admin = Admin.find_by(name: params[:name],
                           password: params[:password])
    if @admin
      session[:admin_id] = @admin.id
      flash[:notice] = "ログインしました"
      redirect_to("/users/index")
    else
      @error_message = "※管理者番号またはパスワードが間違っています"
      @name = params[:name]
      @password = params[:password]
      render("qyo/login_form_admin")
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "logoutしました"
    redirect_to("/")
  end

  def logout_admin
    session[:admin_id] = nil
    flash[:notice] = "admin_logoutしました"
    redirect_to("/login_admin")
  end

  def show
  	@user = User.find_by(id: params[:id])
    @cell = Cell.find_by(data1: @user.enum)
    @admin = Admin.find_by(id: params[:id])

  end

  def update
  	
  end

end
