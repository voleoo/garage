require 'spec_helper'

describe UsersService do
  it { should belong_to :user }
  it { should belong_to :service }
end
