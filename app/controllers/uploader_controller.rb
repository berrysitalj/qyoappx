class UploaderController < ApplicationController
	require 'win32ole'

	def show(msg, title)
	 	wsh = WIN32OLE.new('WScript.Shell')
        wsh.Popup(msg, 0, title, 0 + 16 + 0x40000)
    end

end
