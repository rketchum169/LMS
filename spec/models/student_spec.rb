require 'rails_helper'

RSpec.describe Student, type: :model do
    describe "associations"
    it { should have_many :grades }
    it { should have_many :assignments }
    it { should belong_to :course }
end