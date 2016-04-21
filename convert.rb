victims = []

File.open('victims_104.csv').each do |line|
  columns = line.split(",")
  d = /(\d+)年(\d+)月(\d+)日 (\d+)時(\d+)分/.match(columns[0])
  date_string = "#{d[1]}-#{d[2]}-#{d[3]}T#{d[4]}:#{d[5]}" 
  a = columns[1]
  victims.push "{\"time\":\"#{date_string}\", \"address\": \"#{a}\"}"
end

puts "[" + victims.join(",\n") + "]"