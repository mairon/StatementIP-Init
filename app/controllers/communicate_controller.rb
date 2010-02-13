require 'rubygems'
require 'clickatell'

class CommunicateController < ApplicationController
  def email
  end

  def sms
  end

  def sms_submit
    unless params[:phone].blank?
      if params[:phone].casecmp("help") == 0
        render  :layout => "sorry", :action => "help"
        return
      end
      begin
        message = params[:message].blank? ? "Have a nice day! [from your friendly Rails application]" : params[:message]
        api = Clickatell::API.authenticate('3098823', 'brucep', 'Heather1')
        api.send_message(params[:phone], message)
        @message = "We sent your message to #{params[:phone]}"
      rescue Clickatell::API::Error => ce
        @error = "SMS Clickatell error: #{ce.message}"
        logger.fatal @error
      rescue => e
        @error = "Problem encountered while trying to send SMS: #{e.to_s}"
        logger.fatal @error
      end
    else
      @error = "Phone cannot be blank!"
    end
    render(:action => "sms")
  end

end
