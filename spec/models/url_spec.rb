require 'rails_helper'

RSpec.describe Url, type: :model do
  let(:url) { create(:url) }

  describe 'validations' do
    %i(original slug title).each do |attr|
      it { should validate_presence_of(attr) }
    end

    it 'should set the initial visits to 0' do
      expect(url.visits).to eq(0)
    end
  end
end
