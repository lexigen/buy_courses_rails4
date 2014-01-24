class PartnersController < ApplicationController
  before_filter :find_partner, only: [:show, :edit, :update, :destroy]

  def index
    @partners = Partner.all
  end

  def new
    @partner = Partner.new
  end

  def create
    @partner = Partner.new(set_partner)
    if @partner.save
      flash[:notice] = "The partner has been successfully created."
      redirect_to partners_path
    else
      flash[:alert] = "The partner has not been created."
      render 'new'
    end
  end

  def show

  end

  def edit
    
  end

  def update
    if @partner.update(set_partner)
      flash[:notice] = "The partner has been successfully updated."
      redirect_to @partner
    else
      flash[:alert] = "The partner has not been updated."
      render 'edit'
    end
  end

  def destroy
    @partner.destroy
    flash[:notice] = "The partner has been destroyed."
    redirect_to partners_path
  end

  private
  def set_partner
    params.require(:partner).permit(:title, :address, :email, :phone)
  end

  def find_partner
    @partner = Partner.find(params[:id])
    rescue ActiveRecord::RecordNotFound
    flash[:alert] = "The partner you were looking for does not exist."
    redirect_to root_path
  end
end
