class ClownsController < ApplicationController
  before_action :find_clown, only: [:show, :edit, :update, :destroy]

  def index
    @clowns = Clown.all
  end

  def show
  end

  def new
    @clown = Clown.new
  end

  def create
    @clown = Clown.create(clown_params)
    if @clown.save
      redirect_to @clown
    else
      flash[:errors] = @clown.errors.full_messages
      redirect_to new_clown_path
    end
  end

  def edit
  end

  def update
    @clown.update(clown_params)
    if @clown.save
      redirect_to @clown
    else
      flash[:errors] = @clown.errors.full_messages
      redirect_to edit_clown_path
    end
  end

  def destroy
    @clown.destroy
    redirect_to clowns_path
  end

  private
  def find_clown
    @clown = Clown.find_by(id: params[:id])
  end

  def clown_params
    params.require(:clown).permit(:name, :weight, :creepy)
  end

end
