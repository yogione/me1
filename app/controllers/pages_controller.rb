class PagesController < ApplicationController

  def home
    @title = "Home"
    @client_ip = remote_ip
    p @client_ip
    @city = GeoLocation.find(@client_ip)[:city]
    @region = GeoLocation.find(@client_ip)[:region]
    @country = GeoLocation.find(@client_ip)[:country]

    
#      @stories = Story.find(:all, :include => :comments, :order => 'votes DESC')
#      # @stories = Story.paginate(:page => params[:page])
#      if signed_in?
#        @feed_items = current_user.feed.paginate(:page => params[:page])
#      end
  end

  def remote_ip
    if request.remote_ip == '127.0.0.1'
      # Hard coded remote address
      '24.24.24.24'
    else
      request.remote_ip
    end
  end
   
  def contact
    @title = "Contact"
  end
  
  def about
    @title = "About"
  end
  
  def help
    @title = "Help"
  end
end
