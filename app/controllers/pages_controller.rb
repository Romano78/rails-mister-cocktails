class PagesController < ApplicationController
  def home
  end



  def private 
    params.require(:search).permit(:name)
  end
end
