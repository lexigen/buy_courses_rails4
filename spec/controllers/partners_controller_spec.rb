require 'spec_helper'

describe PartnersController do
  it "returns error for nonexisting partner" do
    get 'show', id: "not_found"

    expect(response).to redirect_to(root_path)
    expect(flash[:alert]).to eql("The partner you were looking for does not exist.")
  end
end
