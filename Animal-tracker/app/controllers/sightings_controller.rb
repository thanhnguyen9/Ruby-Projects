
class  SightingsController < ApplicationController

    def new
      wild = Wild.find(params[:wild_id])
      @sighting = wild.sightings.new
    end

    def create
      wild = Wild.find(params[:wild_id])

      @sighting = wild.sightings.new(:date => params[:date],
                                     :latitude => params[:latitude],
                                     :longitude => params[:longitude])
      if @sighting.save
        render '/sightings/success.html.erb'
      else
        render :new
      end
    end

    def edit
      @sighting = Sighting.find(params[:id])
    end

    def update

      @sighting = Sighting.find(params[:id])

      if @sighting.update(:date => params[:date],
                          :latitude => params[:latitude],
                          :longitude => params[:longitude])
        render ('/sightings/success.html.erb')
      else
        render :edit
      end
    end

    def show
      @sighting = Sighting.find(params[:id])
    end

    def destroy
      @sighting = Sighting.find(params[:id])
      @sighting.destroy
      render '/sightings/success.html.erb'
    end
end
