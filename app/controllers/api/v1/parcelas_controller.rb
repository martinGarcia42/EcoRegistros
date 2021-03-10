module Api 
    module V1 
        class ParcelasController < ApplicationController
            
            def index 
              parcelas = Parcela.all 

              render json: ParcelaSerializer.new(parcelas).serialized_json
            end

            def show
                parcela = Parcela.find(params[:id])

                render json: ParcelaSerializer.new(parcela, optionsra).serialized_json
            end

            def create 
                parcela = Parcela.new(parcela_params)

                if parcela.save
                    render json: ParcelaSerializer.new(parcela).serialized_json
                else 
                    render json: { error: parcela.errors.messages }, status: 422 
                end 
            end 

            def update 
                parcela = Parcela.find(params[:id])

                if parcela.update(parcela_params)
                    render json: ParcelaSerializer.new(parcela, options).serialized_json
                else 
                    render json: { error: parcela.errors.messages }, status: 422 
                end 
            end 

            def destroy 
                parcela = Parcela.find(params[:id])

                if parcela.destroy
                    head :no_content
                else 
                    render json: { error: parcela.errors.messages }, status: 422 
                end 
            end 


            private 

            def parcela_params
                params.require(:parcela).permit(:name, :tipo, :farm_id)
            end

            def options
                @options ||= { include: %i[cultivos]}
            end

        end 
    end 
end 