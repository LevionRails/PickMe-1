class HomeController < ApplicationController
  def index
    @every_allcreator = Allcreator.all
  end
  
  def all_creator
    @every_allcreator = Allcreator.all
  end
  
  def mypage
     
  end
  
  def url_upload
    
    
    @creatorname = params[:name]
    @creatortitle = params[:title]
    @creatorurl = params[:url]
    
    new_allcreator =Allcreator.new
    new_allcreator.name = @creatorname
    new_allcreator.title = @creatortitle
    new_allcreator.url = @creatorurl
    new_allcreator.save
    
    redirect_to "/home/all_creator"
  end
  
end