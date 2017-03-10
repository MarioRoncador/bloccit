require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do
  # #1
    let(:title) { RandomData.random_sentence }
    let(:body) { RandomData.random_paragraph }
    let(:price) { 10 }
    let(:sponsoredpost) { topic.sponsoredpost.create!(title: title, body: body, price: price) }

    it { is_expected.to belong_to(:topic) }
  # #2
    describe "attributes" do
      it "has title and body attributes" do
        expect(sponsoredpost).to have_attributes(title: title, body: bod, price: price)
      end
    end
end
