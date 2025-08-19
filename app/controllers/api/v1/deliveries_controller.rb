# frozen_string_literal: true

module Api
  module V1
    # Deliveries controller
    class DeliveriesController < ApplicationController
      before_action :set_api_v1_delivery, only: %i[show update destroy]

      # GET /api/v1/deliveries
      def index
        @api_v1_deliveries = Delivery.all

        render json: @api_v1_deliveries
      end

      # GET /api/v1/deliveries/1
      def show
        render json: @api_v1_delivery
      end

      # POST /api/v1/deliveries
      def create
        @api_v1_delivery = Delivery.new(api_v1_delivery_params)

        if @api_v1_delivery.save
          render json: @api_v1_delivery, status: :created, location: @api_v1_delivery
        else
          render json: @api_v1_delivery.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /api/v1/deliveries/1
      def update
        if @api_v1_delivery.update(api_v1_delivery_params)
          render json: @api_v1_delivery
        else
          render json: @api_v1_delivery.errors, status: :unprocessable_entity
        end
      end

      # DELETE /api/v1/deliveries/1
      def destroy
        @api_v1_delivery.destroy!
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_api_v1_delivery
        @api_v1_delivery = Delivery.find(params.expect(:id))
      end

      # Only allow a list of trusted parameters through.
      def api_v1_delivery_params
        params.expect(delivery: %i[order_id delivery_person_id status pickup_time delivery_time])
      end
    end
  end
end
