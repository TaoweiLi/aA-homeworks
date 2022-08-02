require "rails_helper"

RSpec.describe "Users", type: :request do
  describe "GET /users/new" do
    it "renders the new template" do
      get new_user_url
      expect(response.body).to include("Sign Up!")
    end
  end

  describe "POST /users" do
    context "with invalid params" do
      it "validates the presence of the user's email" do
        post user_url, params: {
                         use: {
                           email: "",
                           password: "password",
                         },
                       }
        expect(response.body).to include("Sign Up!")
        expect(CGI.unescapeHTML(response.body)).to include("Email can't be blank")
      end

      it "validates that the password is at least 6 characters long" do
        post users_url, params: {
          user: {
            email: "tl101",
            password: "short",
          }
        }
        expect(response.body).to include("Sign Up!")
        expect(response.body).to include("Password is too short")
      end
    end

    context "with valid params" do
      it "redirects user to root page on success" do
        post users_url, params: {
          user: {
            email: "tl101",
            password: "password"
          }
        }
      end
    end
  end
end
