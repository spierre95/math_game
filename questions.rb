class Question
attr_reader :number1, :number2, :operator
def initialize
  @number1 = rand(1..20)
  @number2 = rand(1..20)
  @operator = ['+','-','*'].sample
end

def generate_question
    @operator
    if @operator == '-'
      @number2 = rand(1..@number1)
    else
      @number2 = rand(1..20)
    end
  "What does #{@number1} #{@operator} #{@number2} equal?"
end

def check_answer(input)
  answer = @number1.send(@operator, @number2)
    if input == answer
      puts "correct, good job!"
      true
    else
      puts "incorrect, the answer is #{answer}"
      false
    end
end

end


