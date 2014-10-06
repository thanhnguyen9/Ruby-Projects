lines = File.open "event_attendees.csv"

lines.each_with_index do |line, index|

  next if index == 0
  a = line.split(",")

  name = a[2]
  puts name

end
