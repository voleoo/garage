require 'spec_helper'

describe UsersCar do
  it { should belong_to :user }
  it { should belong_to :car }
end
