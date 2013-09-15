# If we list all the natural numbers below 10 that are multiples of 3 or 5, we
# get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.

class AddMultiplesOf3And5
  def initialize(limit = 0)
    @limit = limit
    run
  end

  def multiples(range = @range)
    @multiples = range.select { |i| i if (i%3 == 0 || i%5 == 0) }
  end

  def range(limit = @limit)
    @range = 1.upto(limit).to_a
  end

  def results(sum = @sum)
    sum
  end

  def run
    range
    multiples
    sum
  end

  def sum(multiples = @multiples)
    @sum = multiples.inject(0, :+)
  end
end
