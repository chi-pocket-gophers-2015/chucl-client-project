require 'rails_helper'

describe "user#new" do
    let!(:user) { User.new(name: "Boys", username: "Boys", password: "Boys") }
    let!(:user_invalid) { User.new(name: "A", username: "", password: "Boys") }

    it "successfully creates a valid user" do
      expect { user.save!
      }.to change(User, :count).by(1)
    end

    it "redirects an invalid sign up" do
      expect(user_invalid).to render_template(:new)
    end
 end
