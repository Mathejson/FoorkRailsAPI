class MealsController < ApplicationController
    before_action :set_meal, only: [:show, :update, :destroy]
    # GET /meals
    def index
        meals = Meal.all
        render json: meals.as_json(include: {meal_variants: {except: [:created_at,:updated_at]}} ,except: [:created_at,:updated_at])
    end
    # GET /meals/1
    def show
        meal = Meal.find(params[:id])
        render json: meal.as_json(include: {meal_variants: {except: [:created_at,:updated_at]}} ,except: [:created_at,:updated_at])
    end

    # GET /meals/new
    def new
        @meal = Meal.new
    end

    # POST /meals
    def create
        @meal = Meal.create(meal_params)
        render json: @meal, status: :created, location: @meal
        
    end

    # PATCH/PUT /meal/1
    # PATCH/PUT /meal/1.json
    def update
        if @meal.update(meal_params)
            render json: @meal
        else
            render json: @meal.errors, status: :unprocessable_entity
        end
    end

    # DELETE /meal/1
    # DELETE /meal/1.json
    def destroy
        @meal.destroy
        respond_to do |format|
        format.html { redirect_to meal_url, notice: 'meal was successfully destroyed.' }
        format.json { head :no_content }
        end
    end
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_meal
        @meal = Meal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def meal_params
        params.require(:meal).permit(:name, :description, :restaurant_id, meal_variants_attributes: [:price, :size])
    end
end
