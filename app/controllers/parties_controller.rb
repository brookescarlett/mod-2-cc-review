class PartiesController < ApplicationController
  before_action :find_party, only: [:show, :edit, :update, :destroy]

  def index
    @parties = Party.all
  end

  def show
  end

  def new
    @party = Party.new
  end

  def create
    @party = Party.create(party_params)
    if @party.save
      redirect_to @party
    else
      flash[:errors] = @party.errors.full_messages
      redirect_to new_party_path
    end
  end

  def edit
  end

  def update
    @party.update(party_params)
    if @party.save
      redirect_to @party
    else
      flash[:errors] = @party.errors.full_messages
      redirect_to edit_party_path
    end
  end

  def destroy
    @party.destroy
    redirect_to parties_path
  end

  private
  def find_party
    @party = Party.find_by(id: params[:id])
  end

  def party_params
    params.require(:party).permit(:host, :clown_id)
  end

end
