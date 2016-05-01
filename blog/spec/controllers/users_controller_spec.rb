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
    it "has a valid "
  end

  def setup
    email = 'test@example.com'
    password = 'password'
    name = 'FreddyTheGhost'
    @user = User.new(:name => name, :email => email, :password => password, :password_confirmation => password).save!
  end

end
