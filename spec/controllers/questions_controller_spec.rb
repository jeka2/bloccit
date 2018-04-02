require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do

let(:my_question) { Question.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph), resolved: false }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "assigns [my_question] to @questions" do
         get :index
         expect(assigns(:questions)).to eq([my_question])
       end
  end

  describe "GET #about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
    end
  end

end
