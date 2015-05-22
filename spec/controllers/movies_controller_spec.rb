require 'rails_helper'

describe MoviesController do
  let!(:genre) {Genre.new(name: "Action")}
  let!(:movie) {Movie.create(title:"Mad Max", synopsis: "In a stark desert landscape where humanity is broken, two rebels just might be able to restore order: Max, a man of action and of few words, and Furiosa, a woman of action who is looking to make it back to her childhood homeland.", genre: genre, runtime: 120)}


    describe "GET #show" do
      it "assigns the requested movie as @movie" do
        get :show, {id: movie.to_param}
        expect(assigns(:movie)). to eq(movie)
      end
    end


end
