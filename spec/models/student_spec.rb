require 'rails_helper'

RSpec.describe Student, type: :model do
  describe "attributes" do
    it { should respond_to(:grade) }
    it { should respond_to(:above_average) }
  end
end
