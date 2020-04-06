class PopularRestaurantsController < ApplicationController
      # GET /
      def index
        restaurants = Restaurant.all.shuffle.take(3)
        render json: restaurants.as_json(include: :address)
    end
end
