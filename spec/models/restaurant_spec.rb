require 'rails_helper'

RSpec.describe Restaurant, type: :model do

  describe 'validations' do
    it 'expect validate presence' do
      subject { Restaurant.new }
      subject.name = ''
      subject.valid?
      expect(subject).to be_invalid

      subject.name = 'MK'
      subject.valid?
      expect(subject).to be_valid
    end
  end

  describe 'associations' do
    it { should have_and_belong_to_many(:dishes) }    
  end
end