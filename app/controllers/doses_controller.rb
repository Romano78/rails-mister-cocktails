class DosesController < ApplicationController

  
  def new
  end

  def create
  end

  def destroy
  end




  private 

  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
