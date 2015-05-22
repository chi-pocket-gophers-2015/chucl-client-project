require 'rails_helper'

describe Movie do
  let!(:genre) { Genre.new(name: "Drama")}
    let!(:user) { User.new(name: "Boys", username: "Boys", password: "Boys") }
  let!(:movie) { Movie.new(title: "Jaws", runtime: 90, synopsis: "It's about a shark", genre: genre) }


  # it "is valid with valid inputs" do
  #   puts movie
  #   expect(movie.valid?).to eq(true)
  # end

    it { should validate_presence_of(:title)}
    it { should validate_presence_of(:runtime)}
    it { should validate_presence_of(:synopsis)}
    it { should validate_presence_of(:genre)}

    it { should belong_to(:genre)}
    it { should have_many(:reviews)}
    it { should have_many(:reviewers)}
    it { should have_many(:comments)}
    it { should have_many(:commenters)}


    describe "custom methods" do

      describe "#calc_aggregate_score" do


        it "can set the aggregate score correctly" do
          5.times do |i|
            movie.reviews << Review.new(user: user, body: "positive #{i}", score: 8)
          end
          5.times do |i|
            movie.reviews << Review.new(user: user, body: "negative #{i}", score: 0)
          end

          movie.save
          puts "Reviews count: #{movie.reviews.count}"
          puts movie.reviews.pluck(:score)
          p "Calculate aggregate: #{movie.set_aggregate_score}"
          # movie.set_aggregate_score
          expect(movie.aggregate_score).to eq(50)

        end

      end

    end


  end
