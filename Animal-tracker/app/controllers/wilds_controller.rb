class WildsController < ApplicationController

  def index
    @wilds = Wild.all
  end

  def new
    @wild = Wild.new
  end

  def create
    @wild = Wild.create(:name => params[:name])

    render '/wilds/success'
  end

  def show
    @wild = Wild.find(params[:id])
  end

  def edit
    @wild = Wild.find(params[:id])
  end

  def update
    @wild = Wild.find(params[:id])

    if @wild.update(:name => params[:name])
      render '/wilds/success.html.erb'
    else
      render :edit
    end
  end

  def destroy
    @wild = Wild.find(params[:id])
    @wild.delete
    render '/wilds/success.html.erb'
  end
end
