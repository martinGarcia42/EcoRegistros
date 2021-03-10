module Api 
    module V1 
        class TratamientosController < ApplicationController
            protect_from_forgery with: :null_session

            def index 
                tratamientos = Tratamiento.all 

                render json: TratamientoSerializer.new(tratamientos).serialized_json
            end

            def show
                tratamiento = Tratamiento.find(params[:id])

                render json: TratamientoSerializer.new(tratamiento).serialized_json
            end

            def create 
                tratamiento = Tratamiento.new(tratamiento_params)

                if tratamiento.save
                    render json: TratamientoSerializer.new(tratamiento).serialized_json
                else 
                    render json: { error: tratamiento.errors.messages }, status: 422 
                end 
            end 

            def update 
                tratamiento = Tratamiento.find(params[:id])

                if tratamiento.update(tratamiento_params)
                    render json: TratamientoSerializer.new(tratamiento).serialized_json
                else 
                    render json: { error: tratamiento.errors.messages }, status: 422 
                end 
            end 

            def destroy 
                tratamiento = Tratamiento.find(params[:id])

                if tratamiento.destroy
                    head :no_content
                else 
                    render json: { error: tratamiento.errors.messages }, status: 422 
                end 
            end 


            private 

            def tratamiento_params
                params.require(:parcela).permit(:producto, :dosis, :caldo, :observaciones, :fecha, :cultivo_id)
            end
        end 
    end 
end 