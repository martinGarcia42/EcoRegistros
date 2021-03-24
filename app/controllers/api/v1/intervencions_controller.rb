module Api 
    module V1 
        class IntervencionsController < ApplicationController
           
            def index 
                intervencions = Intervencion.all 

                render json: IntervencionSerializer.new(intervencions).serialized_json
            end

            def show
                intervencion = Intervencion.find(params[:id])

                render json: IntervencionSerializer.new(intervencion).serialized_json
            end

            def create 
                intervencion = Intervencion.new(intervencion_params)

                if intervencion.save
                    render json: IntervencionSerializer.new(intervencion).serialized_json
                else 
                    render json: { error: intervencion.errors.messages }, status: 422 
                end 
            end 

            def update 
                intervencion = Intervencion.find(params[:id])

                if intervencion.update(intervencion_params)
                    render json: IntervencionSerializer.new(intervencion).serialized_json
                else 
                    render json: { error: intervencion.errors.messages }, status: 422 
                end 
            end 

            def destroy 
                intervencion = Intervencion.find(params[:id])

                if intervencion.destroy
                    head :no_content
                else 
                    render json: { error: intervencion.errors.messages }, status: 422 
                end 
            end 


            private 

            def intervencion_params
                params.require(:intervencion).permit(:action, :fecha, :observaciones, :cultivo_id)
            end
        end 
    end 
end 