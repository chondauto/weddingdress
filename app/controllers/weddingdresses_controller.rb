class WeddingdressesController < ApplicationController
    def index
        @weddingdresses = Weddingdress.all
    end
    def show
        @weddingdress = Weddingdress.find_by id: params[:id]
    end
    def new
        @weddingdress = Weddingdress.new
    end
    def create
        e = Weddingdress.new( params.require(:weddingdress).permit(:name, :size, :color))
        e.save
        redirect_to weddingdresses_path
    end
    def destroy
        @weddingdress = Weddingdress.find_by(params[:id])
        @weddingdress.destroy
        redirect_to weddingdresses_path
    end
    def edit
        @weddingdress = Weddingdress.find_by(params[:id])
    end
    def update
        @weddingdress = Weddingdress.find_by(params[:id])
        @weddingdress.update(params.require(:weddingdress).permit(:name, :size, :color))
        redirect_to weddingdresses_path
    end
end
