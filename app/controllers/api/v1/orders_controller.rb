# frozen_string_literal: true

module Api
  module V1
    # Controller for orders
    class OrdersController < ApplicationController
      before_action :set_api_v1_order, only: %i[show update destroy]

      # GET /api/v1/orders
      def index
        @api_v1_orders = Order.all

        render json: @api_v1_orders
      end

      # GET /api/v1/orders/1
      def show
        render json: @api_v1_order
      end

      # POST /api/v1/orders
      def create
        @api_v1_order = Order.new(api_v1_order_params)

        if @api_v1_order.save
          render json: @api_v1_order, status: :created, location: @api_v1_order
        else
          render json: @api_v1_order.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /api/v1/orders/1
      def update
        if @api_v1_order.update(api_v1_order_params)
          render json: @api_v1_order
        else
          render json: @api_v1_order.errors, status: :unprocessable_entity
        end
      end

      # DELETE /api/v1/orders/1
      def destroy
        @api_v1_order.destroy!
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_api_v1_order
        @api_v1_order = Order.find(params.expect(:id))
      end

      # Only allow a list of trusted parameters through.
      def api_v1_order_params
        params.expect(api_v1_order: %i[account_id restaurant_id address_id status delivery_time total_price
                                       payment_method payment_status])
      end
    end
  end
end
