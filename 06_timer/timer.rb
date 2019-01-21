class Timer
  attr_accessor :seconds

  #write your code here
  def initialize(sec = 0)
    @seconds = sec
  end

  def padded(n)
    return n < 10 ? "0#{n}" : "#{n}"
  end
  
  def time_string
    hours = @seconds / 3600

    if(hours > 0)
      minutes = @seconds / 60 % 60
    else
      minutes = @seconds / 60
    end

    seconds = @seconds % 3600 % 60

    hours = padded(hours)
    minutes = padded(minutes)
    seconds = padded(seconds)

    return [hours, minutes, seconds].join(":")
  end
end
