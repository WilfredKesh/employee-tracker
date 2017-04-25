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
        it "has a new form" do
            visit new_post_path
            expect(page.status_code).to eq(200)
        end

        it "can be created from new form page " do
            visit new_post_path

            fill_in 'post[date]', with: Date.today
            fill_in 'post[rationale]', with: "Sample post"

            click_on "Save"

            expect(page).to have_content("Sample post")
        end
        
        
    end


end
