require 'spec_helper'

describe Picture do
  describe "relations" do
    it { should belong_to :imageable}
  end
   
  describe "validations" do
    it { should validate_presence_of :path }
  end
end
