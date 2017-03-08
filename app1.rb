require 'date'

def toDateTime(unixtimestamp)

dateObject = Time.at(unixtimestamp).to_datetime
formatted = dateObject.strftime("%d %b %Y %H:%M:%S")
return DateTime.parse(formatted)

end

def readableDiff(firstDate, secondDate)
seconds_diff = ((firstDate - secondDate) * 24 * 60 * 60).to_i
days = seconds_diff / 86400 
seconds_diff -= days * 86400

hours = seconds_diff / 3600  
seconds_diff -= hours * 3600

minutes = seconds_diff / 60
seconds_diff -= minutes * 60

seconds = seconds_diff

puts "#{days} day #{hours} hour #{minutes} min and #{seconds} seconds"
end

firstDate = toDateTime(1478779621)
secondDate = toDateTime(1478687791)

readableDiff(firstDate, secondDate)

