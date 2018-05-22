class Players

attr_reader :name,:score
attr_writer :score

  def initialize(name,score)
    @name = name
    @score = score
  end
end
