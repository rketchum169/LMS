require 'rails_helper'

RSpec.describe Assignment, type: :model do
    describe "associations"
    it { should belong_to :course }
    it { should have_many :grades }
    it { should have_many :students }
end