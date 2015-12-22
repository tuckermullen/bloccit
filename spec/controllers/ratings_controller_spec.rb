require 'rails_helper'

RSpec.describe RatingsController, type: :controller do
  let(:my_rating) { Rating.create!(integer: 5) }

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end

    it "renders the #show view" do
      get :show, { id: my_rating.id }
      expect(response).to render_template :show
    end

    it "assigns my_rating to @ratings" do
      get :show, { id: my_rating.id }
      expect(assigns(:ratings)).to eq(my_rating)
    end
  end
end
