module Api 
    module V1 
        class FarmsController < ApplicationController

            before_action :authenticate_employee!
            
            def index
                farms = Farm.all 

                render json: FarmSerializer.new(farms, options).serialized_json
            end

            def show
                farm = Farm.find(params[:id])

                render json: FarmSerializer.new(farm).serialized_json
            end

            def create 
                farm = Farm.new(farm_params)

                if farm.save
                    render json: FarmSerializer.new(farm).serialized_json
                else 
                    render json: { error: farm.errors.messages }, status: 422 
                end 
            end 

            def update 
                farm = Farm.find(params[:id])

                if farm.update(farm_params)
                    render json: FarmSerializer.new(farm, option).serialized_json
                else 
                    render json: { error: farm.errors.messages }, status: 422 
                end 
            end 

            def destroy 
                farm = Farm.find(params[:id])

                if farm.destroy
                    head :no_content
                else 
                    render json: { error: farm.errors.messages }, status: 422 
                end 
            end 

            private 

            def farm_params
                params.require(:farm).permit(:name)
            end

            def options 
                @options ||= { include: %i[parcelas]}
            end


        end 
    end 
end 