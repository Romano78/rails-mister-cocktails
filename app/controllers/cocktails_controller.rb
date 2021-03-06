class CocktailsController < ApplicationController
    before_action :find_cocktail, only: [:show]


    def index()
        if params[:search].present?
            @search = params[:search]
            @cocktails = Cocktail.where("name iLike '%#{params[:search][:query]}%'")
            
        else
         @cocktails = Cocktail.all
        end      
    end

    def new()
        @cocktail = Cocktail.new
    end

    def create()
        @cocktail = Cocktail.new(cocktail_params)

        if @cocktail.save
            redirect_to cocktail_path(@cocktail)
        else
            render :new
        end
    end


    def show()
        if @cocktail.photo.present?
        @photo = "#{@cocktail.photo.key}.jpg"
        end
        @dose = Dose.new
    end


    private 

    def cocktail_params()
        params.require(:cocktail).permit(:name, :description, :rating, :photo)
    end
    
    def find_cocktail()
        @cocktail = Cocktail.find(params[:id])
    end

end
