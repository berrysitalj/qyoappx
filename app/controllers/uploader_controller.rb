class UploaderController < ApplicationController
  require 'win32ole'

  def show(msg, title)
    wsh = WIN32OLE.new('WScript.Shell')
    wsh.Popup(msg, 0, title, 0 + 64 + 0x40000)
  end

  def create
  end

  def upload
  end

  def upload_all
    @users = User.all
    exfile = params[:file]
  	if exfile
        if File.extname(exfile.path) == ".xlsx"
          s = Roo::Excelx.new(exfile.path)
          @users.each do |user|
            begin
              exsheet = user.enum
              s.default_sheet = exsheet
              @cell = Cell.find_by(data1: exsheet)
            
              @data1 = s.cell('E',4)
              @data2 = s.cell('B',4)
              @data3 = s.cell('H',4)
              @data4 = exfile
              @data5 = s.cell('AC',4)
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

              @cell.data1 = @data1
              @cell.data2 = @data2
              @cell.data3 = @data3
              @cell.data4 = @data4
              @cell.data5 = @data5
              @cell.data6 = @data6
              @cell.data7 = @data7
              @cell.data8 = @data8
              @cell.data9 = @data9
              @cell.data10 = @data10
              @cell.data11 = @data11
              @cell.data12 = @data12
              @cell.data13 = @data13
              @cell.data14 = @data14
              @cell.data15 = @data15
              @cell.data16 = @data16
              @cell.data17 = @data17
              @cell.data18 = @data18
              @cell.data19 = @data19
              @cell.data20 = @data20
              @cell.data21 = @data21
              @cell.data22 = @data22
              @cell.data23 = @data23
              @cell.data24 = @data24
              @cell.data25 = @data25
              @cell.data26 = @data26
              @cell.data27 = @data27
              @cell.data28 = @data28
              @cell.data29 = @data29
              @cell.data30 = @data30
              @cell.data31 = @data31
              @cell.data32 = @data32
              @cell.data33 = @data33
              @cell.data34 = @data34
              @cell.data35 = @data35
              @cell.data36 = @data36
              @cell.data37 = @data37
              @cell.data38 = @data38
              @cell.data39 = @data39
              @cell.data40 = @data40
              @cell.data41 = @data41
              @cell.data42 = @data42
              @cell.data43 = @data43
              @cell.data44 = @data44
              @cell.data45 = @data45
              @cell.data46 = @data46
              @cell.data47 = @data47
              @cell.data48 = @data48
              @cell.data49 = @data49
              @cell.data50 = @data50
              @cell.data51 = @data51
              @cell.data52 = @data52
              @cell.data53 = @data53
              @cell.data54 = @data54
              @cell.data55 = @data55
              @cell.data56 = @data56
              @cell.data57 = @data57
              @cell.data58 = @data58
              @cell.data59 = @data59
              @cell.data60 = @data60
              @cell.save
            rescue
              next
            end
          end
    
          if @cell.save
            flash[:notice] = "一括更新が完了しました"
            redirect_to("/users/index")
          else
            render("users/index")
          end
        else
          @error_message = ".xlsxファイルではありません。正しいファイルを選択してください。"
          render("users/index")
        end
    else
      @error_message = "ファイルを選択してください。"
      render("users/index")
    end
  end

end