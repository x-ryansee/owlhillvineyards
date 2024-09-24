class OliveOilsController < ApplicationController
    
    def index
      @olive_oils = OliveOil.all
    end
  
    def show
      @olive_oil = OliveOil.find(params[:id])
    end
  
    def create
      @olive_oil = OliveOil.new(olive_oil_params)
      if @olive_oil.save
        redirect_to @olive_oil
      else
        render 'new'
      end
    end
  
    def edit
      @olive_oil = OliveOil.find(params[:id])
    end
  
    def update
      @olive_oil = OliveOil.find(params[:id])
      if @olive_oil.update(olive_oil_params)
        redirect_to @olive_oil
      else
        render 'edit'
      end
    end
  
    def destroy
      @olive_oil = OliveOil.find(params[:id])
      @olive_oil.destroy
      redirect_to olive_oils_path
    end
  
    private
  
    def olive_oil_params
      params.require(:olive_oil).permit(:olive_species, :bottle_size, :vintage, :other_ingredients, :about, :image)
    end
  end
  