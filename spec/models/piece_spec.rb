require 'spec_helper'

describe Piece do

  before { @piece = Piece.new(title: "De sterrennacht (Starry Night)", maker:"Vincent van Gogh", stuff:"oil and canvas", time_period:"1800s") }

    subject { @piece }

    it { should respond_to(:title) }
    it { should respond_to(:maker) }
    it { should respond_to(:stuff) }
    it { should respond_to(:time_period) }


    # describe "when title is not given" do
    #   before { @piece.title = "" }
    #   expect (@piece.title).to equal("Title Unknown")
    # end

    describe "when title is too long" do
      before { @piece.title = "z" * 51 }
      it { should_not be_valid }
    end

    # describe "when maker is not given" do
    #   before { @piece.maker = "" }
    #   expect(@piece.maker).to equal("Maker Unknown")
    # end

    describe "when maker is too long" do
      before { @piece.maker = "z" * 51 }
      it { should_not be_valid }
    end

    describe "when stuff is too long" do
      before { @piece.stuff = "z" * 51 }
      it { should_not be_valid }
    end

  end

