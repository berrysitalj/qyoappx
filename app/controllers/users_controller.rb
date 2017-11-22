class UsersController < ApplicationController
  require 'roo'
  before_action :authenticate_user_admin

  def index
  	@users = User.all
    @refer = Refer.find_by(id: 1).filename
  end

  def show
  	@user = User.find_by(id: params[:id])
    userenum = @user.enum
    @cell = Cell.find_by(data1: userenum)
    @refer = Refer.find_by(id: 1).filename
  end

  def new
  	@user = User.new
    @refer = Refer.find_by(id: 1).filename
  end

   
  def create
    exsheet = params[:enum2]
    exfile = params[:file]
      s = Roo::Excelx.new(exfile.path)
      begin
        s.default_sheet = exsheet
        @data1 = s.cell('E',4)
        @data2 = s.cell('B',4)
        @data3 = s.cell('H',4)
        @data4 = exfile
        @data5 = s.cell('AC',4) #パスワード
        @data6 = s.cell('C',7)
        @data7 = s.cell('F',7)
        @data8 = s.cell('I',7)
        @data9 = s.cell('K',7)
        @data10 = s.cell('M',7)

        @data11 = s.cell('P',7)
        @data12 = s.cell('R',7)
        @data13 = s.cell('U',7)
        @data14 = s.cell('C',9)
        @data15 = s.cell('F',9)
        @data16 = s.cell('I',9)
        @data17 = s.cell('K',9)
        @data18 = s.cell('M',9)
        @data19 = s.cell('P',9)
        @data20 = s.cell('R',9)

        @data21 = s.cell('X',9)
        @data22 = s.cell('C',12)
        @data23 = s.cell('F',12)
        @data24 = s.cell('I',12)
        @data25 = s.cell('K',12)
        @data26 = s.cell('M',12)
        @data27 = s.cell('P',12)
        @data28 = s.cell('R',12)
        @data29 = s.cell('U',12)
        @data30 = s.cell('C',14)

        @data31 = s.cell('F',14)
        @data32 = s.cell('I',14)
        @data33 = s.cell('K',14)
        @data34 = s.cell('M',14)
        @data35 = s.cell('P',14)
        @data36 = s.cell('R',14)
        @data37 = s.cell('X',14)
        @data38 = s.cell('C',18)
        @data39 = s.cell('E',18)
        @data40 = s.cell('G',18)

        @data41 = s.cell('J',18)
        @data42 = s.cell('L',18)
        @data43 = s.cell('M',18)
        @data44 = s.cell('N',18)
        @data45 = s.cell('O',18)
        @data46 = s.cell('P',18)
        @data47 = s.cell('Q',18)
        @data48 = s.cell('R',18)
        @data49 = s.cell('ZZ',1)
        @data50 = s.cell('ZZ',1)

        @data51 = s.cell('ZZ',1)
        @data52 = s.cell('ZZ',1)
        @data53 = s.cell('T',18)
        @data54 = s.cell('Z',1)
        @data55 = s.cell('Z',1)
        @data56 = s.cell('Z',1)
        @data57 = s.cell('Z',1)
        @data58 = s.cell('U',2)
        @data59 = s.cell('W',2)
        @data60 = s.cell('U',3)

        @cell = Cell.new(
          data1: @data1,
          data2: @data2,
          data3: @data3,
          data4: @data4,
          data5: @data5,
          data6: @data6,
          data7: @data7,
          data8: @data8,
          data9: @data9,
          data10: @data10,
          data11: @data11,
          data12: @data12,
          data13: @data13,
          data14: @data14,
          data15: @data15,
          data16: @data16,
          data17: @data17,
          data18: @data18,
          data19: @data19,
          data20: @data20,
          data21: @data21,
          data22: @data22,
          data23: @data23,
          data24: @data24,
          data25: @data25,
          data26: @data26,
          data27: @data27,
          data28: @data28,
          data29: @data29,
          data30: @data30,
          data31: @data31,
          data32: @data32,
          data33: @data33,
          data34: @data34,
          data35: @data35,
          data36: @data36,
          data37: @data37,
          data38: @data38,
          data39: @data39,
          data40: @data40,
          data41: @data41,
          data42: @data42,
          data43: @data43,
          data44: @data44,
          data45: @data45,
          data46: @data46,
          data47: @data47,
          data48: @data48,
          data49: @data49,
          data50: @data50,
          data51: @data51,
          data52: @data52,
          data53: @data53,
          data54: @data54,
          data55: @data55,
          data56: @data56,
          data57: @data57,
          data58: @data58,
          data59: @data59,
          data60: @data60
          )
        @cell.save
        @user = User.new(enum: exsheet, dname: @data2, name: @data3, fname: exfile, password: @data5)
        if @user.save
          flash[:notice] = "ユーザー登録が完了しました"
          redirect_to("/users/#{@user.id}")
        else
          render("users/new")
        end
      rescue
        @error_message = "入力された社員No.に一致するシートが存在しません。"
        @enum2 = params[:enum2]
        render("users/new")
      end     
  end




  def edit
  	@user = User.find_by(id: params[:id])
    @refer = Refer.find_by(id: 1).filename
  end

   def update
    @user = User.find_by(id: params[:id])
    @user.enum = params[:enum]
    @user.dname = params[:dname]
    @user.name = params[:name]
    @user.password = params[:password]
    if @user.save
      flash[:notice] = "ユーザー情報を編集しました"
      redirect_to("/users/#{@user.id}")
    else
      render("users/edit")
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    flash[:notice] = "ユーザーを削除しました"
    redirect_to("/users/index")
  end

end