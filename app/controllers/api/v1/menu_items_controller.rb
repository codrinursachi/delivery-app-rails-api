# frozen_string_literal: true

module Api
  module V1
    # Menu items controller
    class MenuItemsController < ApplicationController
      before_action :set_api_v1_menu_item, only: %i[show update destroy]

      # GET /api/v1/menu_items
      def index
        @api_v1_menu_items = Api::V1::MenuItem.all

        render json: @api_v1_menu_items
      end

      # GET /api/v1/menu_items/1
      def show
        render json: @api_v1_menu_item
      end

      # POST /api/v1/menu_items
      def create
        @api_v1_menu_item = Api::V1::MenuItem.new(api_v1_menu_item_params)

        if @api_v1_menu_item.save
          render json: @api_v1_menu_item, status: :created, location: @api_v1_menu_item
        else
          render json: @api_v1_menu_item.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /api/v1/menu_items/1
      def update
        if @api_v1_menu_item.update(api_v1_menu_item_params)
          render json: @api_v1_menu_item
        else
          render json: @api_v1_menu_item.errors, status: :unprocessable_entity
        end
      end

      # DELETE /api/v1/menu_items/1
      def destroy
        @api_v1_menu_item.destroy!
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_api_v1_menu_item
        @api_v1_menu_item = Api::V1::MenuItem.find(params.expect(:id))
      end

      # Only allow a list of trusted parameters through.
      def api_v1_menu_item_params
        params.expect(api_v1_menu_item: %i[restaurant_id category name description price is_available])
      end
    end
  end
end
