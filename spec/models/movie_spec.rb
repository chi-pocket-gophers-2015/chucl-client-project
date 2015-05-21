require 'rails_helper'

describe Movie do
  # let!(:genre) { Genre.new(name: "Drama")}
  # let!(:movie) { Movie.new(title: "Jaws", runtime: 90, synopsis: "It's about a shark", genre: genre) }


  # it "is valid with valid inputs" do
  #   puts movie
  #   expect(movie.valid?).to eq(true)
  # end

  it { should validate_presence_of(:title)}
  it { should validate_presence_of(:runtime)}
  it { should validate_presence_of(:synopsis)}
  it { should validate_presence_of(:genre)}

  end
