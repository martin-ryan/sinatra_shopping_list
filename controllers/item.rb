class ItemController < ApplicationController

  get "/" do
    erb :home
  end


  get "/display" do
    @items = Item.all
    erb :item_list
  end


  get "/create" do
    erb :create
  end

  post "/create/:id" do
    item_name = params[:name]
    item_quantity = params[:quantity]

    @item = Item.new
    @item.name = item_name
    @item.quantity = item_quantity
    @item.save

    @message = "The item was added to your shopping list."
    erb :message
  end

  get "/update/:id" do
    item_to_update = params[:id]
    @item = Item.find(item_to_update)
    return @item.to_json

    erb :update
  end

  post "/update" do
    item_id = params[:id]
    item_name = params[:name]
    item_quantity = params[:quantity]

    @item = Item.find(item_id)
    @item.name = item_name
    @item.quantity = item_quantity
    @item.save

    @message = "Item information updated"
    erb :message
  end

  get "/destroy/:id" do
    item_to_destroy = params[:id]
    @item = Item.find(item_to_destroy)

    erb :destroy
  end

  post "/destroy" do
    item_to_destroy = params[:id]
    @item = Item.find(item_to_destroy)
    @item.destroy

    @message = "Your item was destroyed >_<"
    erb :message
  end

end
