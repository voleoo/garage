require 'spec_helper'

describe Authentication do

  describe "relations" do
    it { should belong_to :user }
  end

  describe "validations" do
    it { should validate_presence_of :email }
    it { should validate_uniqueness_of :email }
    it { should_not allow_value("username#gmail.com").for(:email) }
    it { should allow_value("username@gmail.com").for(:email) }

    it { should validate_presence_of :password }
    it { should ensure_length_of(:password).is_at_least(6).is_at_most(255) }

    it "should be valid authentication whis confirmation password" do
      user = FactoryGirl.create :authentication
      user.should be_valid
    end
  end
end
