class PartnersController < ApplicationController
  def index
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
      flash[:notice] = "The partner has not been created."
      render 'new'
    end
  end

  private
  def set_partner
    params.require(:partner).permit(:title, :address, :email, :phone)
  end
end
