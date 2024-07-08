class String
  def initial
    self[0,1]
  end
end


class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    return str.split(" ").map { | nstr | nstr.length > 4?  ((nstr.initial == nstr.initial.capitalize()? "Marklar" : "marklar") + nstr.gsub(/[\w\s]/, "")) : nstr }.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10

  def self.even_fibonacci(nth)
    current, prev, sum = 1, 1, 0

    (nth - 2).times do
      sum += current if current.even?
      current, prev = current + prev, current
    end

    return sum
  end

end
