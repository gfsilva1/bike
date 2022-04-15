class BiciController < ApplicationController
  def index
    @bicis = Bici.all
  end

  def new
    @bici = Bici.new
  end

  def create
    @bici = Bici.new(bici_params)
    @bici.save
    redirect_to bici_path(@bici)
  end

  def show
    @bici = Bici.find(params[:id])
  end

  def edit
    @bici = Bici.find(params[:id])
  end

  def update
    @bici = Bici.find(params[:id])
    @bici.update(bici_params)
    redirect_to bici_path(@bici)
  end

  def destroy
    @bici = Bici.find(params[:id])
    @bici.destroy
    redirect_to bicis_path
  end

  private

  def bici_params
    params.require(:bici).permit(:name)
  end
end
