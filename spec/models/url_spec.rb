require 'rails_helper'

RSpec.describe Url, type: :model do
  let(:url) { create(:url) }
  let(:invalid_url) { build(:url, original: 'something')}

  describe 'validations' do
    it { should validate_presence_of(:original) }

    it 'should set the initial visits to 0' do
      expect(url.visits).to eq(0)
    end

    describe 'original' do
      it 'should be a valid URL' do
        expect(url).to be_valid
        expect(invalid_url).not_to be_valid
      end
    end
  end
end
