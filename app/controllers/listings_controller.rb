class ListingsController < ApplicationController
    before_action :set_listing, only: [:show, :edit, :update, :destroy]

    def create
        #create a new listing
        #byebug
    end
    
    def update
        #updates current listing
    end

    def index
        #shows all listing
        @listings = Listing.all
    end

    def edit
        #show the edit form
    end

    def destroy
       #deletes current listing 
    end

    def new
        #shows form for creating a new listing
        @listing = Listing.new
        @breeds = Breed.all
        @sexes = Listing.sexes.keys
    end

    def show
        #view a single listing
    end

    private

    def set_listing
        id = params[:id]
        @listing = Listing.find(id)
    end
end