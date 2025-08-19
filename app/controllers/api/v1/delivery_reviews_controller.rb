# frozen_string_literal: true

module Api
  module V1
    # Delivery reviews controller
    class DeliveryReviewsController < ApplicationController
      before_action :set_api_v1_delivery_review, only: %i[show update destroy]

      # GET /api/v1/delivery_reviews
      def index
        @api_v1_delivery_reviews = DeliveryReview.all

        render json: @api_v1_delivery_reviews
      end

      # GET /api/v1/delivery_reviews/1
      def show
        render json: @api_v1_delivery_review
      end

      # POST /api/v1/delivery_reviews
      def create
        @api_v1_delivery_review = DeliveryReview.new(api_v1_delivery_review_params)

        if @api_v1_delivery_review.save
          render json: @api_v1_delivery_review, status: :created, location: @api_v1_delivery_review
        else
          render json: @api_v1_delivery_review.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /api/v1/delivery_reviews/1
      def update
        if @api_v1_delivery_review.update(api_v1_delivery_review_params)
          render json: @api_v1_delivery_review
        else
          render json: @api_v1_delivery_review.errors, status: :unprocessable_entity
        end
      end

      # DELETE /api/v1/delivery_reviews/1
      def destroy
        @api_v1_delivery_review.destroy!
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_api_v1_delivery_review
        @api_v1_delivery_review = DeliveryReview.find(params.expect(:id))
      end

      # Only allow a list of trusted parameters through.
      def api_v1_delivery_review_params
        params.expect(delivery_review: %i[user_id delivery_person_id order_id rating comment])
      end
    end
  end
end
