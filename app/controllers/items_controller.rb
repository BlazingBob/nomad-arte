class ItemsController < ApplicationController
    def index
        @items = Item.all
        query = params[:query]
        if query.present?
            @items = Item.where('name LIKE ?', "%#{query.capitalize}")
        end
    end
end
