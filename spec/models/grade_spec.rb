require 'rails_helper'

RSpec.describe Grade, type: :model do
    
    describe "associations" do
        it { should belong_to :student }
        it { should belong_to :assignment }
    end

end