def measure(number = 1)  
  counter = number  
  total = 0  
  while counter > 0  
  start = Time.now  
  counter-=1  

yield

stop = Time.now
total = total + (stop - start)

end

 total / number
end  