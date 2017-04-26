require 'rails_helper'


describe "navigate" do
    describe 'index' do
        it "can be reached succesfuly" do
            visit posts_path
            expect(page.status_code).to eq(200)
        end

        it "has a title of posts" do
            visit posts_path
            expect(page).to have_content(/Posts/)
        end
    end

    describe 'creation ' do
        before do 
            user = FactoryGirl.create(:user)
            login_as(user, :scope => :user)
            visit new_post_path 
        end
        

        it "has a new form" do
           
            expect(page.status_code).to eq(200)
        end

        it "can be created from new form page " do
    

            fill_in 'post[date]', with: Date.today
            fill_in 'post[rationale]', with: "Sample post"
            click_on "Save"
            expect(page).to have_content("Sample post")
        end
        

        it "post has user association" do
            fill_in 'post[date]', with: Date.today
            fill_in 'post[rationale]', with: "Second post"
            click_on "Save"
            expect(User.last.posts.last.rationale).to eq("Second post")
        end
        
        
    end


end
