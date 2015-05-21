require 'rails_helper'

describe UsersController do
    let!(:user) { User.new(name: "Boys", username: "Boys", password: "Boys") }
    let!(:invalid_params) { {name: "A", username: "", password: "Boys"} }
    let!(:valid_params) { {name: "A", username: "V", password: "Boys"} }

    it "successfully creates a valid user" do
      expect { user.save!
      }.to change(User, :count).by(1)
    end

    it "redirects to the created game" do
      post :create, user: valid_params
      expect(response).to redirect_to(user_path(assigns(:user)))
    end

    it "does not save invalid entries" do
      user = User.create(name: "", username: "Boys", password: "Boys")
      expect(user).to_not be_valid
    end

    it "redirects invalid entries" do
      post :create, user: invalid_params
      expect(response).to render_template(:new)
    end
 end
