require 'rails_helper'

Rspec.describe User model, type: :model do
  # Association test
  it { should have_many(:events) }
  it { should have_many(:interests) }
  it { should have_many(:users) }
  it { should have_and_belong_to_many(:pairings)}
  it { should have_many(:pairs).class_name('User') }



end
