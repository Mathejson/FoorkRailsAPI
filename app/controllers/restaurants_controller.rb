class RestaurantsController < ApplicationController
    before_action :set_restaurant, only: [:show, :update, :destroy]
    include Secured
    # GET /restaurants
    def index
        restaurants = Restaurant.all
        render json: restaurants.as_json(include: :address)
    end
    # GET /restaurants/1
    def show
        restaurant = Restaurant.find(params[:id])
        render json: restaurant.as_json(include: :address)
    end

    # GET /restaurants/new
    def new
        @restaurant = Restaurant.new
    end

    # POST /restaurants
    def create
        @restaurant = Restaurant.create(restaurant_params)
        render json: @restaurant, status: :created, location: @restaurant
    end

    # PATCH/PUT /restaurants/1
    # PATCH/PUT /restaurants/1.json
    def update
        if @restaurant.update(restaurant_params)
            render json: @restaurant
        else
            render json: @restaurant.errors, status: :unprocessable_entity
        end
    end

    # DELETE /restaurants/1
    # DELETE /restaurants/1.json
    def destroy
        @restaurant.destroy
        respond_to do |format|
        format.html { redirect_to restaurants_url, notice: 'restaurant was successfully destroyed.' }
        format.json { head :no_content }
        end
    end
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
        @restaurant = Restaurant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def restaurant_params
        params.require(:restaurant).permit(:name, :website_url, :phone_number, :working_hours, :image_url, address_attributes: [:street, :city, :zip_code, :home_number, :apartment_number])
    end
end
