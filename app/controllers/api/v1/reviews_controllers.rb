module Api
    module V1
      
      class ReviewsController < ApplicationController
        # before_action :set_review, only: [:show, :update, :destroy]
  
        # POST /reviews
        def create
          review = Review.new(review_params)
  
          if review.save
            render json: ReviewSerializer.new(review).serialized_json
          else
            render json: review.errors, status: :unprocessable_entity
          end
        end
  
        # PATCH/PUT /reviews/1
        # def update
        #   if @review.update(review_params)
        #     render json: @review
        #   else
        #     render json: @review.errors, status: :unprocessable_entity
        #   end
        # end
  
        # DELETE /reviews/1
        def destroy
          review.destroy
        end
  
        private
          # Use callbacks to share common setup or constraints between actions.
          # def set_review
          #   @review = Review.find(params[:id])
          # end
  
          # Only allow a trusted parameter "white list" through.
          def review_params
            params.require(:review).permit(:title, :description, :score, :stroller_id)
          end
      end
  