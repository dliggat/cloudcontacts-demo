task fizz_buzz: :environment do
  QuestionOne.fizz_buzz(lower: 1, upper: 100) do |i|
    puts i
  end
end
