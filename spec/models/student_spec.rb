require 'rails_helper'

RSpec.describe Student, type: :model do
  context "validations tests" do
    it "ensures name is present" do
      student = Student.new(email: "test@example.com", password: "password")
      expect(student.valid?).to eq(false)
    end

    it "ensures email is present" do
      student = Student.new(name: "test", password: "password")
      expect(student.valid?).to eq(false)
    end

    it "ensures password is present" do
      student = Student.new(name: "test", email: "test@example.com")
      expect(student.valid?).to eq(false)
    end

    it "should be able to save project" do
      student = Student.new(name: "test", email: "test@example.com", password: "password")
      expect(student.valid?).to eq(true)
    end
  end
end