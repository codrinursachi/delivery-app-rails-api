# frozen_string_literal: true

module Api
  module V1
    # Controller for restaurants
    class RestaurantsController < ApplicationController
      before_action :set_api_v1_restaurant, only: %i[show update destroy]

      # GET /api/v1/restaurants
      def index
        @restaurants = Api::V1::Restaurant.all

        render json: @restaurants
      end

      # GET /api/v1/restaurants/1
      def show
        render json: @restaurant
      end

      # POST /api/v1/restaurants
      def create
        @restaurant = Api::V1::Restaurant.new(api_v1_restaurant_params)

        if @restaurant.save
          render json: @restaurant, status: :created, location: @restaurant
        else
          render json: @restaurant.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /api/v1/restaurants/1
      def update
        if @restaurant.update(api_v1_restaurant_params)
          render json: @restaurant
        else
          render json: @restaurant.errors, status: :unprocessable_entity
        end
      end

      # DELETE /api/v1/restaurants/1
      def destroy
        @restaurant.destroy!
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_restaurant
        @restaurant = Api::V1::Restaurant.find(params.expect(:id))
      end

      # Only allow a list of trusted parameters through.
      def restaurant_params
        params.expect(restaurant: %i[account_id name description phone email opening_time
                                     closing_time status average_rating])
      end
    end
  end
end
