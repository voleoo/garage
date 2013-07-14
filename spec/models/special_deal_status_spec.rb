require 'spec_helper'

describe SpecialDealStatus do
  it { should belong_to :status }
  it { should belong_to :special_deal }
end