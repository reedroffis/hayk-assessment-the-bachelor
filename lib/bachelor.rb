require "pry"

def get_first_name_of_season_winner(data, season)
x = data[season].find do |contestant|
  contestant["status"] == "Winner"  
 end
 return x["name"].split[0]
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
   x = contestants.find do |contestant|
      contestant["occupation"] == occupation
     end
     if x != nil 
     return x["name"]
     end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0 
  data.each do |season, contestants|
    x = contestants.select do |contestant|
      contestant["hometown"] == hometown
    end
    count += x.length
  end
  return count 
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
