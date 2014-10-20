class RegionsController < ApplicationController


    @@regions = []
    
    def index
      @regions = Region.all
    end

    def new
      @region = Region.new
    end

    def create

      @region = Region.new(:region_name => params[:name])
      if @region.save
        @@regions << @region
        render ('/regions/success.html.erb')
      else
        render :new
      end
    end

    def edit
      @region = Region.find(params[:id])
    end

    def update
      @region = Region.find(params[:id])

      if @region.update(:region_name => params[:name])
        render '/regions/success.html.erb'
      else
        render :edit
      end
    end

    def show
      @region = Region.find(params[:id  ])
    end

    def destroy
      @region = Region.find(params[:id])
      @region.delete
      render '/regions/success.html.erb'

    end
end
