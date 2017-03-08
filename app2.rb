require 'date'


date = Date.parse "Thu, 22 Dec 2016 00:00:00"
dateInSeconds = date.to_time.to_i

arr = []

def cycle(initialValue, stopCondition, increment,arr, dateInSeconds)
i = initialValue
until i >= stopCondition
arr.push (dateInSeconds + i)
i += increment
end
end

cycle(0, 3600, 15*60, arr, dateInSeconds) 

cycle(3600, 3600*5, 30*60, arr, dateInSeconds)

cycle(3600 * 5, 3600*12, 60*60, arr, dateInSeconds)

i = 3600 * 12
until i > 3600 * 24 * 6
arr.push (dateInSeconds+i)
i += 3600 * 24
end

arr_dates = []
arr.each do |x|
a = Time.at(x).to_datetime
s = a.strftime("%d %b %Y %H:%M:%S")
arr_dates.push(s)
end

puts arr_dates
