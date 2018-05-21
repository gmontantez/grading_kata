require 'minitest/autorun'
require_relative 'grading_kata.rb'

class Grading_kata_test < Minitest::Test
	def test_true_is_true
		assert_equal(true,true)
	end

	def test_grademaker_conversion
		name = "Gail"
		grade = 72
		assert_equal({"Gail" => "75"},grademaker(name,grade))
	end

	def test_second_grademaker_conversion
		name = "Gabby"
		grade = 97
		assert_equal({"Gabby" => "100"},grademaker(name,grade))
	end

	def test_third_grademaker_conversion
		name = "Anna"
		grade = 85
		assert_equal({"Anna" => "85"},grademaker(name,grade))
	end

	def test_failing_grade_grademaker
		name = "Sam"
		grade = 32
		assert_equal({"Sam" => "32"},grademaker(name,grade))
	end

	def test_gradebook_list
		list = {"Sam" => 32}
		assert_equal([{"Sam" => "32"}],gradebook(list))
	end

	def test_gradebook_list_1
		list = {"Gail" => 87, "Sam" => 36}
		assert_equal([{"Gail" => "90"}, {"Sam" => "36"}],gradebook(list))
	end

	def test_gradebook_list_2
		list = {"Anna" => 92, "Gabby" => 76, "Gail" => 85}
		assert_equal([{"Anna" => "95"}, {"Gabby" => "80"}, {"Gail" => "85"}],gradebook(list))
	end

	def test_gradebook_list_3
		list = {"Anna" => 92, "Gabby" => 76, "Gail" => 85, "Sam" => 24}
		assert_equal([{"Anna" => "95"}, {"Gabby" => "80"}, {"Gail" => "85"}, {"Sam" => "24"}],gradebook(list))
	end
end