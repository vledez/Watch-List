class ListsController < ApplicationController

  before_action :set_restaurant, only: [:show, :destroy]

  def index
    @lists = List.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to @list, notice: 'List was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @list.destroy
    redirect_to lists_url, notice: 'list was successfully destroyed.'
  end

  private

    def set_list
      @list = List.find(params[:id])
    end

end
