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

  def bici_params
    params.require(:bici).permit(:name)
  end

  def show
    @bici = Bici.find(params[:id])
  end
end
