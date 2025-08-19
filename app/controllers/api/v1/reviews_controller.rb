# frozen_string_literal: true

module Api
  module V1
    # Reviews controller
    class ReviewsController < ApplicationController
      before_action :set_api_v1_review, only: %i[show update destroy]

      # GET /api/v1/reviews
      def index
        @api_v1_reviews = Review.all

        render json: @api_v1_reviews
      end

      # GET /api/v1/reviews/1
      def show
        render json: @api_v1_review
      end

      # POST /api/v1/reviews
      def create
        @api_v1_review = Review.new(api_v1_review_params)

        if @api_v1_review.save
          render json: @api_v1_review, status: :created, location: @api_v1_review
        else
          render json: @api_v1_review.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /api/v1/reviews/1
      def update
        if @api_v1_review.update(api_v1_review_params)
          render json: @api_v1_review
        else
          render json: @api_v1_review.errors, status: :unprocessable_entity
        end
      end

      # DELETE /api/v1/reviews/1
      def destroy
        @api_v1_review.destroy!
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_api_v1_review
        @api_v1_review = Review.find(params.expect(:id))
      end

      # Only allow a list of trusted parameters through.
      def api_v1_review_params
        params.expect(review: %i[account_id restaurant_id order_id rating comment])
      end
    end
  end
end
