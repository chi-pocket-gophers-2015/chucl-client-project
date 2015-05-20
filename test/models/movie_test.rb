require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  # test "Assigns @movie correctly" do

  # end
  describe "movies#show" do
    it "Gets the page" do
      @movie = Movie.first
      get movie_path(@movie)
      expect(response.status).to be(200)
    end

    # it "Assigns @movie correctly" do
    #   get movie_path(@movie)
    # end
  end
end
