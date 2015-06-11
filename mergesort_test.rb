require_relative('mergesort')
require 'test/unit'
class Mergesort_test < Test::Unit::TestCase

	def test_cero_elemento
		assert_equal(Mergesort.new.merge_sort([]), [])
	end

	def test_un_elemento
		assert_equal(Mergesort.new.merge_sort([5]), [5])
	end

	def test_simple
		assert_equal(Mergesort.new.merge_sort([6, 7, -1, 0, 5, 2]), [-1, 0, 2, 5, 6, 7])
	end

	def test_impar
		assert_equal(Mergesort.new.merge_sort([6, 7, -1, 0, 5]), [-1, 0, 5, 6, 7])
	end
end