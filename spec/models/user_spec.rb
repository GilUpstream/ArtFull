require 'spec_helper'

describe User do

  #create test users using randomuser.me
  before { @user = User.new(fname: "Constance", lname:"Castillo", username:"silverSwan", favorite_piece:"Leda and the Swan", email: "constance.castillo76@example.com", password: "foobarfoo") }
  before { @other_user = User.new(fname: "Stanley", lname:"Bryant", username:"heavyRabbit", favorite_piece:"Rabbit by Famous When Dead", email: "stanley.bryant73@example.com", password: "foobarfoo") }

  describe '#initialize' do

    subject { @user }

    it { should respond_to(:fname) }
    it { should respond_to(:lname) }
    it { should respond_to(:username) }
    it { should respond_to(:favorite_piece) }
    it { should respond_to(:email) }
    it { should be_valid }
  end

  describe "when first name is not present" do
    before { @user.fname = " " }
    it { should_not be_valid }
  end

  describe "when last name is not present" do
    before { @user.lname = " " }
    it { should_not be_valid }
  end

  describe "when first name is too long" do
    before { @user.fname = "z" * 26 }
    it { should_not be_valid }
  end

  describe "when last name is too long" do
    before { @user.lname = "z" * 26 }
    it { should_not be_valid }
  end

  describe "when email is not present" do
    before { @user.email = " " }
    it { should_not be_valid }
  end

  describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo.
       foo@bar_baz.com foo@bar+baz.com]
       addresses.each do |invalid_address|
        @user.email = invalid_address
        expect(@user).not_to be_valid
      end
    end
  end

  describe "when email format is valid" do
    it "should be valid" do
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        @user.email = valid_address
        expect(@user).to be_valid
      end
    end
  end

  describe "when email address is already taken" do

    before do
      user_with_same_email = @user.dup
      user_with_same_email.email = @user.email.upcase
      user_with_same_email.save
    end

    it { should_not be_valid }
  end

  describe "when password is not present" do
    before do
      @user = User.new(fname: "Example", lname: "User", email: "user@example.com",
       password: " ", password_confirmation: " ")
    end
    it { should_not be_valid }
  end

  describe "when password doesn't match confirmation" do
    before { @user.password_confirmation = "mismatch" }
    it { should_not be_valid }
  end

  describe "with a password that's too short" do
    before { @user.password = @user.password_confirmation = "a" * 5 }
    it { should be_invalid }
  end

  describe "#follow!" do
    before { @user.save }
    before { @other_user.save }
    before { @user.follow!(@other_user)}

    it "will add other_user to followed_users" do
      expect(@user.followed_users).to include(@other_user)
    end
  end

  describe "#unfollow!" do
    before { @user.save }
    before { @other_user.save }
    before { @user.follow!(@other_user) }
    before { @user.unfollow!(@other_user) }

    it "will remove other_user from followed_users" do
      expect(@user.followed_users).not_to include(@other_user)
    end
  end

  describe "#following?" do
    context "when a user is following other_user" do
      before { @user.save }
      before { @other_user.save }
      before { @user.follow!(@other_user) }

      it "should return true" do
        expect(@user.following?(@other_user)).to be_true
      end
    end

    context "when a user is not following other_user" do

      it "should return true" do
        expect(@user.following?(@other_user)).to be_false
      end
    end
  end


end
