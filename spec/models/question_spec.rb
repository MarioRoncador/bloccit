require 'rails_helper'

RSpec.describe Question, type: :model do
  # #1
   let(:question) { Question.create!(title: "New Question Title", body: "New Question Body", resolved: true) }

 # #2
   describe "attributes" do
     it "has title and body attributes" do
       expect(question).to have_attributes(title: "New Question Title", body: "New Question Body", resolved: true)
     end
   end
end
