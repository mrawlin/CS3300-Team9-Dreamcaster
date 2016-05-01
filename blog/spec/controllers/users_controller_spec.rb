require 'rails_helper'
require 'spec_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe UsersController do
    it "is invalid without a firstname" do
      Factory.build(:contact, firstname: nil).should_not be_valid
    end
  end

  def setup
    email = 'test@example.com'
    password = 'password'
    name = 'FreddyTheGhost'
    @user = User.new(:name => name, :email => email, :password => password, :password_confirmation => password).save!
  end

end
