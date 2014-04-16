# ===============================
# What we have.
# -------------------------------
# /happy_hours
# /places

# -----------------------------
# Homepage:

# what time is it.
# where the hell are we #
# what's around us
# and wheres's the cheap drinks.


# Secondary flow:
# - Add a happy hour.
# - Crowd source it.. for easy bettering.

# ================================

# what are the sections of town.
# --------------------------------
zones = [
  "West Side",
  "East Side",
  "Live Oak",
  "Seabright",
  "Pleasure Point",
  "Capitola Village",
  "Midtown",
  "Downtown",
  "Anywhere"
]

@current_zone = zones[7]
puts "YOU MUST: ONLY SHOW HAPPY HOURS IN YOUR CURRENT ZONE, your current zone is #{@current_zone}"
puts "HINT: Arrays http://www.ruby-doc.org/core-2.1.1/Array.html"
puts "BONUS PINTS: day of week #{Time.now.strftime("%A")}"

puts "We are at #{@current_zone}"

class HappyHour
  attr_reader :name
  attr_reader :start_time
  attr_reader :end_time
  attr_reader :special

  def initialize(name, start_time, end_time, special)
    @name       = name
    @start_time = start_time
    @end_time   = end_time
    @special    = special

  end

  # return true if it's open now.
  def is_open_now?
    time_of_day  = Time.now.hour
    ((time_of_day > start_time) && (time_of_day < end_time))
  end

  def opening_soon?
    now  = Time.now.hour
    (now < start_time)
  end

end

places = []

places << HappyHour.new(
    "Barnies Bar and Bar",
    (3 + 12),
    (9 + 12),
    "2$ beers",
  )

places << HappyHour.new(
     "Hooters",
     (9),
     (12),
     "Endless Mimosas"
     )

places << HappyHour.new(
      "Graeme's Tiki Tiki",
      (10 + 12),
      (12 + 12),
      "Flaming abalone shell with moustache (you must wear the moustache)"
    )



places.each { |place|
  if (place.is_open_now?)
    puts "-"*80
    puts "OPEN NOW"
    puts place.name
    puts place.start_time
    puts place.end_time
    puts place.special
    puts "-"*80
  end

  if (place.opening_soon?)
    puts "*"*20 + "open soon" + "*"*20
    puts place.name
    puts place.start_time
    puts place.end_time
    puts place.special

    puts "-"*80
  end

}
