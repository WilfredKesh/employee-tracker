require 'rails_helper'

RSpec.describe User, type: :model do
  before do 
        @user = User.create(email: "test@test.com", password: "password", password_confirmation: "password", first_name: "john", last_name: "doe" )
   end
 describe "creation" do
   

   it "can be created " do
     expect(@user).to be_valid
   end

   it "cannot be created without a first_name, last_name" do 
     @user.first_name = nil
     @user.last_name = nil
     expect(@user).to_not be_valid
   end

 end
 describe "custom name method" do 
    it "has a full user name" do
      expect(@user.full_name).to eq("John Doe")
    end
 end

end
