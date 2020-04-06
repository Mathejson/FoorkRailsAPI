class AddressesController < ApplicationController
    def index
        @addresses = Address.all
        render json: @addresses
    end

    def show
        render json: @addresses
    end

    # GET /addresses/new
    def new
        @address = Address.new
    end

    # POST /addresses
    def create
        @address = addresses.new(address_params)
        if @address.save
            render json: @address, status: :created, location: @address
        else
          render json: @address.errors, status: :unprocessable_entity
        end
    end

 # PATCH/PUT /addresses/1
    # PATCH/PUT /addresses/1.json
    def update
        if @restaurant.update(restaurant_params)
            render json: @address
        else
            render json: @address.errors, status: :unprocessable_entity
        end
    end

    # DELETE /addresses/1
    # DELETE /addresses/1.json
    def destroy
        @address.destroy
        respond_to do |format|
        format.html { redirect_to addresses_url, notice: 'address was successfully destroyed.' }
        format.json { head :no_content }
        end
    end
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_address
        @address = Address.find(params[:id])
    end

    def address_params
        params.require(:address).permit(:street, :city, :zipCode, :homeNumber, :apartmentNumber)
    end
end
