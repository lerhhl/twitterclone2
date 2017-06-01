require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:tweets)}
  it { should validate_presence_of(:first_name)}
  it { should validate_presence_of(:last_name)}
  it { should validate_presence_of(:username)}
  it { should validate_presence_of(:description)}
  it { should validate_length_of(:username).is_at_least(3)}

  describe 'validates uniqueness of' do
      subject {User.create(email: "example@example.com", password: "123123", first_name: "john", last_name: "doe", username: "johndoe", description: "ABCDE")}
      it { should validate_uniqueness_of (:username)}
    end
end
