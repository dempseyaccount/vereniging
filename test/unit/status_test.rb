require 'test_helper'

class StatusTest < ActiveSupport::TestCase
	test "that a status requires content" do
		status = Status.new
		assert !status.save
		assert !status.errors[:context].empty?
	end

	test "that a status's content is at least 2 letters" do
		status = Status.new
		status.context = "H"
		assert !status.save
		assert !status.errors[:context].empty?
	end

	test "that a status's has a user ids" do
		status = Status.new
		status.context = "Hello"
		assert !status.save
		assert !status.errors[:user_id].empty?
	end


end
