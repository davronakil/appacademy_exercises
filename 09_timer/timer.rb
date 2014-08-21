class Timer

attr_accessor :seconds

def initialize (seconds = 0)
  @seconds = seconds
end



def time_string(seconds = 0)
    hours   = (@seconds / 3600)
    minutes = (@seconds % 3600) / 60
    seconds = (@seconds % 60)

  reformat(hours).to_s+":"+reformat(minutes).to_s+":"+reformat(seconds).to_s
end


def reformat(num)
  if num < 10
    "0#{num}"
  else
    num
  end
end

end
