require 'rails_helper'
require 'spec_helper'

  describe SearchController , type: :controller do
    describe 'searching active Volunteers' do

    before :each do
      @fake_results = [double('user1'), double('user2')]
    end
  
    it 'should call the model method that performs search' do
     
     User.should_receive(:search).with(1).and_return(@fake_results)
     post :search, {:search => 1}
   
    end
    
    it 'should select the Search Results template for rendering' do
       
       User.stub(:search).and_return(@fake_results)
      post :search, {:search => 1}
      response.should render_template('search')

    end


      
    
  end 

end
