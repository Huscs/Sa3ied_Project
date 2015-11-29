# spec/models/user.rb
require 'spec_helper'

describe User do
  it "shoud be initilaized"do
   #Factory.user(:user).should be_valid #user = User.new
  end
  it "is invalid without a firstname"
  it "is invalid without a lastname"
  it "returns a user's full name as a string"
end