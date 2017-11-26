require 'rails_helper'

RSpec.describe Interest, type: :model do
  # Association test
  it { should belong_to(:event) }
  it { should belong_to(:user) }

end
