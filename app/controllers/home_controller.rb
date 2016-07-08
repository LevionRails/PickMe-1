class HomeController < ApplicationController
  def index
  end
  
  def all_creator
    @every_allcreator = Allcreator.all
  end
  
  def mypage
     
  end
  
  def url_upload

    @allcreator.name = params[:name]
    @allcreator.title = params[:title]
    @allcreator.url = params[:url]
    
    new_allcreator =Allcreator.new
    new_allcreator.name = @allcreator.name
    new_allcreator.title = @allcreator.title
    new_allcreator.url = @allcreator.url
    new_allcreator.save
    
    redirect_to "/all_creator"
  end
  
end
