class Timer
  SECONDS_IN_HOUR=3600
  SECONDS_IN_MINUTE=60

  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds / SECONDS_IN_HOUR
    minutes = (@seconds % SECONDS_IN_HOUR) / SECONDS_IN_MINUTE
    seconds = @seconds % SECONDS_IN_MINUTE
    
    "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
  end

  def padded(time)
    time < 10 ? "0" + time.to_s : time.to_s
  end
end
