
require 'rails_helper'

describe 'navigate ' do
    describe 'get to homepage' do 
      it 'can be reached succesfully' do
        visit root_path
        expect(page.status_code).to eq(200)
      end
    end
end