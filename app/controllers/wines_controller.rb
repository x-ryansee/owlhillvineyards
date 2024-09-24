class WinesController < ApplicationController
   
    def index
      @wines = Wine.all
    end
  
    def show
      @wine = Wine.find(params[:id])
    end
  
    def create
      @wine = Wine.new(wine_params)
      if @wine.save
        redirect_to @wine
      else
        render 'new'
      end
    end
  
    def update
      @wine = Wine.find(params[:id])
      if @wine.update(wine_params)
        redirect_to @wine
      else
        render 'edit'
      end
    end
  
    def destroy
      @wine = Wine.find(params[:id])
      @wine.destroy
      redirect_to wines_path
    end
  
    private
  
    def wine_params
      params.require(:wine).permit(:varietal, :bottle_size, :color, :vintage, :about, :image_url, :bold, :tannic, :dry, :acidic)
    end
  end
  