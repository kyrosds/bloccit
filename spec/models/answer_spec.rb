require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:question) { Question.new(title: "New Question Title", body: "New Question Body", resolve: false)}
  let(:answer) { Answer.new(body: "New Answer Body", question: question)}
  
  it "should respond to body" do
    expect(question).to respond_to(:body)
  end
end
