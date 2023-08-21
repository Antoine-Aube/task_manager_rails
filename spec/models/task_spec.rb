require "rails_helper"

RSpec.describe Task, type: :model do 
  let(:task) {Task.create! ({
    title: "Laundry",
    description: "do laundry"
  })}
  let(:task2) {Task.create!({
    title: "dishes",
    description: "do dishes"
  })}

  describe "instance methods" do 
    describe "#laundry?" do 
      it "should return true if task title is laundry" do 
        expect(task.laundry?).to be true
      end
      
      it "returns true when the description is laundry" do
        # task3 = Task.create!(title: "Clean my clothes", description: "laundry")
        
        expect(task.laundry?).to be true
      end
      
      it "should return false if title does not contain laundry" do
        expect(task2.laundry?).to be false
      end
      
      it "returns false when neither the description nor title is laundry" do 
        expect(task2.laundry?).to be false
      end
      
      it "returns true when the title contains the word laundry" do 
        expect(task.laundry?).to be true
      end

      it "is case insensitive when checking if the title contains the word laundry" do 
        expect(task.laundry?).to be true
      end
    end
  end
end