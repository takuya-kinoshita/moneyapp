require 'rails_helper'

RSpec.describe User, type: :model do

  it "is valid with a first name, last name, email, and password" do
    user = User.new(
		firstname: "kino",
		lastname: "taku",
		email: "tester@gmail.com",
		password: "password"
		)

    expect(user).to be_valid
  end

  it "is invalid without a first name" do
    user = User.new(
		firstname: nil
		)
    user.valid?
    expect(user.errors[:firstname]).to include("can't be blank")
  end

  it "is invalid without a last name" do
    user = User.new(
		lastname: nil
		)
    user.valid?
    expect(user.errors[:lastname]).to include("can't be blank")
  end

  it "is invalid without an email address" do
    user = User.new(
		email: nil
		)
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")
  end

  it "is invalid with a duplicate email address" do
    User.create(
		email: "tester@gmail.com",
		firstname: "kino",
		lastname: "kino",
		password:"password"
		)
    user = User.new(
		firstname: "kino",
		lastname: "kino",
		email: "tester@gmail.com",
		password: "password")
    user.valid?
    expect(user.errors[:email]).to include("has already been taken")
  end

  it "returns a user's full name as a string" do
    user = User.new(firstname: "kino",
			lastname: "taku"
		)
    expect(user.name).to eq "kino taku"    
  end

  it "has a valid factory" do
    expect(FactoryBot.build(:user)).to be_valid
  end


end
