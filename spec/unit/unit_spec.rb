# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end


#author
  subject do
    described_class.new(author: 'J.K. Rowling')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.author = nil
    expect(subject).not_to be_valid
  end
  

#price
  subject do
    described_class.new(price: '14.99')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.price = nil
    expect(subject).not_to be_valid
  end
  

  #date
  subject do
    described_class.new(published: '04/02/1998')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.date = nil
    expect(subject).not_to be_valid
  end
end