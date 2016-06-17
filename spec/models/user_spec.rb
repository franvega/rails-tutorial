require 'spec_helper'

describe User do
  before do
    @user = User.new(email: 'fran@fran.com')
  end

  subject { @user }

  before { @user.save }
  its(:id) { should_not be_nil }
end
