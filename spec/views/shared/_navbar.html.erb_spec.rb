require 'rails_helper'

describe "shared/_navbar.html.erb" do

  context "without user" do
    it "renders login and signup" do
      render
      expect(rendered).to have_content "Log In"
      expect(rendered).to have_content "Sign Up"
    end
  end

  context "Signed in user" do
    before { sign_in user }

    context "without profile" do
      let(:user) { create :user }

      it "renders email" do
        render
        expect(rendered).to have_content user.email
      end
    end

    context "with profile" do
      let(:profile) { build :profile }
      let(:user) { create :user, profile: profile }

      it "renders full name" do
        render
        expect(rendered).to have_content profile.first_name
        expect(rendered).to have_content profile.last_name
      end
    end
  end
end
