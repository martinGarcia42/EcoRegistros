module Api 
    module V1 
        class RecoleccionsController < ApplicationController
            def index 
                recoleccions = Recoleccion.all 

                render json: RecoleccionSerializer.new(recoleccions).serialized_json
            end

            def show
                recoleccion = Recoleccion.find(params[:id])

                render json: RecoleccionSerializer.new(recoleccion).serialized_json
            end

            def create 
                recoleccion = Recoleccion.new(recoleccion_params)

                if recoleccion.save
                    render json: RecoleccionSerializer.new(recoleccion).serialized_json
                else 
                    render json: { error: recoleccion.errors.messages }, status: 422 
                end 
            end 

            def update 
                recoleccion = Recoleccion.find(params[:id])

                if recoleccion.update(recoleccion_params)
                    render json: RecoleccionSerializer.new(recoleccion).serialized_json
                else 
                    render json: { error: recoleccion.errors.messages }, status: 422 
                end 
            end 

            def destroy 
                recoleccion = Recoleccion.find(params[:id])

                if recoleccion.destroy
                    head :no_content
                else 
                    render json: { error: recoleccion.errors.messages }, status: 422 
                end 
            end 


            private 

            def recoleccion_params
                params.require(:parcela).permit(:plantas, :kilosdextrio, :observaciones, :fecha, :cultivo_id)
            end
        end 
    end 
end 