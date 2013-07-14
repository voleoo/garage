require 'spec_helper'

describe Performer do
  it { should belong_to :user }
  it { should belong_to :order }
end
