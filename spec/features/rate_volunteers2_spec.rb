require 'rails_helper'
require 'spec_helper'

  describe RateController , type: :controller do
    describe 'Rate Volunteers' do

    it 'should include rating in username' do
    volunteer = User.create(username: "test_user1", email: "test_user1@user.com", password: "password", rating: 0)
    volunteer.with_rate.should == 0

  end
end


end