# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::V1::MenuItemsController, type: :routing do # rubocop:disable RSpecRails/InferredSpecType
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/api/v1/menu_items').to route_to('api/v1/menu_items#index')
    end

    it 'routes to #show' do
      expect(get: '/api/v1/menu_items/1').to route_to('api/v1/menu_items#show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/api/v1/menu_items').to route_to('api/v1/menu_items#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/api/v1/menu_items/1').to route_to('api/v1/menu_items#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/api/v1/menu_items/1').to route_to('api/v1/menu_items#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/api/v1/menu_items/1').to route_to('api/v1/menu_items#destroy', id: '1')
    end
  end
end
