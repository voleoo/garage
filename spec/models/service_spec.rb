require 'spec_helper'

describe Service do
  describe "relations" do
    it { should have_many :users_services }
    it { should have_and_belong_to_many :brands }
  end
  describe "validations" do
    it { should validate_presence_of :service }
  end

end
