require 'rails_helper'

describe CommentsController do
    let!(:comment) { Comment.new(body: "Hello", user_id: 1, commentable_id: 1, commentable_type: "Comment") }
    let!(:valid_params) { {body: "Hello", user_id: 1, commentable_id: 1, commentable_type: "Movie"}}
    let!(:movie) { Movie.create(title: "The Sound of Music", synopsis: "A woman leaves an Austrian convent to become a governess to the children of a Naval officer widower.", runtime: 174)}

    it "successfully creates a valid comment" do
      expect { comment.save!
      }.to change(Comment, :count).by(1)
    end

    # it "redirects to the movie path" do
    #   post :create, comment: valid_params
    #   expect(assigns(:comment)).to redirect_to(root_path)
    # end

 end
