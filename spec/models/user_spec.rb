require 'spec_helper'

describe User do

  #create test user using randomuser.me
  before { @user = User.new(fname: "Constance", lname:"Castillo", username:"silverSwan", favorite_piece:"Leda and the Swan", email: "constance.castillo76@example.com", password: "foobarfoo") }

  subject { @user }

  it { should respond_to(:fname) }
  it { should respond_to(:lname) }
  it { should respond_to(:username) }
  it { should respond_to(:favorite_piece) }
  it { should respond_to(:email) }

end
