class PrimeNumberService

  def initialize(number)
    @num = number
  end

  def call
    return @num >= 2 if @num <= 3
    return true if @num == 5
    return false unless 30.gcd(@num) == 1
    (7..Integer.sqrt(@num)).step(30) do |num|
      return false if
      @num%(num)    == 0 || @num%(num+4)  == 0 || @num%(num+6)  == 0 || @num%(num+10) == 0 || @num%(num+12) == 0 || @num%(num+16) == 0 || @num%(num+22) == 0 || @num%(num+24) == 0
    end
    true
  end
end
