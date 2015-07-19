class Api::V1::ItemsController < ApplicationController
  before_filter :authenticate_by_auth_token
  before_filter :find_item, only: [:show, :update, :destroy]
  skip_before_filter :verify_authenticity_token

  def index
    render json: @current_user.items.order('updated_at'), only: [:id, :text, :completed], status: 200
  end

  def show
    render json: @item, only: [:id, :text, :completed], status: 200
  end

  def update
    @item.assign_attributes(item_params)
    if @item.save
      render json: @item, only: [:id, :text, :completed]
    else
      render json: {message: "couldn't update item"}
    end
  end

  def destroy
    if @item.destroy
      render json: {message: 'The item was destroyed', success: true}
    else
      render json: {message: 'couldn\'t destroy item', success: false}
    end
  end

  def create
    if @current_user.items.create!(item_params)
      render json: Item.last, only: [:id, :text, :completed]
    else
      render json: {message: "couldn't create new item"}
    end
  end

  def completedAll
    if @current_user.items.update_all(:completed => params[:completedAll])
      render json: @current_user.items.order('updated_at'), only: [:id, :text, :complete], status: 200
    else
      render json: {message: "couldn't update item", success: false}
    end
  end

  def destroyCompletedTodo
    completedAll = @current_user.items.where(:completed => true)
    if completedAll.destroy_all
      render json: {message: 'The item was destroyed', success: true}
    else
      render json: {message: 'couldn\'t destroy item', success: false}
    end
  end

  private
    def find_item
      @item = Item.find(params[:id])
    end
    def item_params
      item_params = {text: params[:text], completed: params[:completed]}
    end
end
