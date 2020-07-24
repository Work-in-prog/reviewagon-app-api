module Api
    module V1
      class StrollersController < ApplicationController
        # before_action :set_stroller, only: [:show, :update, :destroy]
        
        # GET /strollers
        def index
          strollers = Stroller.all
          render json: StrollerSerializer.new(strollers, options).serialized_json
        end
        
        # GET /strollers/1
        def show
          stroller = Stroller.find_by(slug: params[:slug])
          render json: StrollerSerializer.new(stroller, options).serialized_json
        end
  
        # POST /strollers
        def create
          stroller = Stroller.new(stroller_params)
  
          if stroller.save
            render json: StrollerSerializer.new(stroller).serialized_json
          else
            render json: stroller.errors, status: :unprocessable_entity
          end
        end
  
        # PATCH/PUT /strollers/1
        def update
          stroller = Stroller.find_by(slug: params[:slug])
  
          if stroller.update(stroller_params)
            render json: StrollerSerializer.new(stroller, options).serialized_json
          else
            render json: stroller.errors, status: :unprocessable_entity
          end
        end
  
        # DELETE /strollers/1
        def destroy
          stroller.destroy
        end
  
        private
        # Use callbacks to share common setup or constraints between actions.
        def options
          @options ||= { include: %i[reviews]}
        end
  
        # Only allow a trusted parameter "white list" through.
        def stroller_params
          params.require(:stroller).permit(:name, :image_url)
        end
      end
    end
  end
  