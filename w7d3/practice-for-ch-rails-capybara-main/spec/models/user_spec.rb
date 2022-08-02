require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) do
    User.create!(email: "tl101@hotmial.com", password: "good_password")
  end
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it  should validate_length_of(:password).is_at_least(6)

  describe "#is_password?" do
    it "verifies a password is correct" do
      expect(user.is_password?("good_password")).to be true
    end

    it "verifies a password is not correct" do
      expect(user.is_password?("good_password")).to be flase
    end
  end

  describe "#reset_session_token!" do
    it "set a new session token on the user" do
      user.valida?
      old_seesion_token = user.session_token
      user.reset_session_token!

      expect(user.session_token).to_not eq(old_session_token)
    end

    it "return the new session token" do
      expect(user.reset_session_token!).to eq(user.session_token)
    end
  end

  describe "::find_by_credentials" do
    before { user.save! }

    it "return user given good credentials" do
      expect(User.find_by_credentials("tl101@hotmial.com", "good_password")).to eq(user)
    end

    it "return nil given bad credentials" do
      expect(User.find_by_credentials("tl101@hotmial.com", "good_password")).to eq(nil)
    end
  end






end
