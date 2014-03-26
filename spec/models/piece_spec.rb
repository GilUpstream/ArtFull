require 'spec_helper'

describe Piece do

  before { @piece = Piece.new(title: "De sterrennacht (Starry Night)", maker:"Vincent van Gogh", stuff:"oil and canvas", time_period:"1800s") }

  describe "#initialize" do

    subject { @piece }

    it { should respond_to(:title) }
    it { should respond_to(:maker) }
    it { should respond_to(:stuff) }
    it { should respond_to(:time_period) }
  end

  describe 'default values' do
    before { @piece_no_title = Piece.new(maker:"Vincent van Gogh", stuff:"oil and canvas", time_period:"1800s") }
    before { @piece_no_maker = Piece.new(title: "De sterrennacht (Starry Night)", stuff:"oil and canvas", time_period:"1800s") }

    it "has a default title" do

      expect(@piece_no_title.title).to eq("Title Unknown")
    end

     it "has a default maker" do

      expect(@piece_no_maker.maker).to eq("Maker Unknown")
    end
  end

  describe "piece validations" do

    subject { @piece }

    describe "when title is too long" do
      before { @piece.title = "z" * 51 }
      it { should_not be_valid }
    end

    describe "when maker is too long" do
      before { @piece.maker = "z" * 51 }
      it { should_not be_valid }
    end

    describe "when stuff is too long" do
      before { @piece.stuff = "z" * 51 }
      it { should_not be_valid }
    end
  end

  end

