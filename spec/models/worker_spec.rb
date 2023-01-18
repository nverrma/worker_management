require 'rails_helper'

RSpec.describe Worker do
  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:shift) }
    it { should validate_presence_of(:date) }
  end
end
