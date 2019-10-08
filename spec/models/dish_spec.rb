require 'rails_helper'

RSpec.describe Dish, type: :model do
  describe 'validations' do
    it 'expect validate presence' do
      subject { Dish.new }
      subject.name = ''
      subject.valid?
      expect(subject).to be_invalid

      subject.name = 'Ramen'
      subject.valid?
      expect(subject).to be_valid
    end
  end

  describe 'associations' do
    it { should have_and_belong_to_many(:restaurants) }    
  end
end