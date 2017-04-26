FactoryGirl.define do
  factory :post do
    date Date.today
    rationale "some post"
  
  end

  factory :second_post, class: "Post" do
    date Date.yesterday
    rationale "some post"
  end
   
end