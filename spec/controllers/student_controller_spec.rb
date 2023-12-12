require 'rails_helper'

RSpec.describe StudentController, type: :controller do
  describe "GET #index" do
    it "assigns the correct instance variables" do
      # Create some example students in the database
      student1 = create(:student, s1: 88, s2: 53, s3: 69, s4: 64)
      student2 = create(:student, s1: 92, s2: 86, s3: 93, s4: 77)

      get :index

      expect(assigns(:students)).to eq([student1, student2])
      
      # You might need to adjust these expectations based on your implementation
      expect(assigns(:grades_count)).to eq({ 'B' => 1, 'A' => 1 })
      expect(assigns(:above_average_count)).to eq(1)
      expect(assigns(:below_average_count)).to eq(1)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
end
