module QuestionOne

  def fizz_buzz(lower:, upper:, &block)
    lower.upto(upper) do |i|
      if i % 3 == 0 && i % 5 == 0
        yield 'FizzBuzz'
      elsif i % 3 == 0
        yield 'Fizz'
      elsif i % 5 == 0
        yield 'Buzz'
      else
        yield i.to_s
      end
    end
  end

  module_function :fizz_buzz
end
