require 'rails_helper'

RSpec.describe Tweet, type: :model do
    it { should have_many(:tags)}
    it { should validate_presence_of(:body)}
end