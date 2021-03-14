module Api 
    module V1 
        class CultivosController < ApplicationController
            def index 
                cultivos = Cultivo.all 

                render json: CultivoSerializer.new(cultivos).serialized_json
            end

            def show
                cultivo = Cultivo.find(params[:id])

                render json: CultivoSerializer.new(cultivo).serialized_json
            end

            def create 
                cultivo = Cultivo.new(cultivo_params)

                if cultivo.save
                    render json: CultivoSerializer.new(cultivo).serialized_json
                else 
                    render json: { error: cultivo.errors.messages }, status: 422 
                end 
            end 

            def update 
                cultivo = Cultivo.find(params[:id])

                if cultivo.update(cultivo_params)
                    render json: CultivoSerializer.new(cultivo).serialized_json
                else 
                    render json: { error: cultivo.errors.messages }, status: 422 
                end 
            end 

            def destroy 
                cultivo = Cultivo.find(params[:id])

                if cultivo.destroy
                    head :no_content
                else 
                    render json: { error: cultivo.errors.messages }, status: 422 
                end 
            end 


            private 

            def cultivo_params
                params.require(:cultivo).permit(:name, :variedad, :plantas, :observaciones, :parcela_id)
            end

            def options
                @options ||= { include: %i[intervencions, tratamientos, recoleccions]}
            end
        end 
    end 
end 