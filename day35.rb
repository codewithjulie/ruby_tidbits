# Did you know they are an expression? That means you can save it to a variable

def get_letter_grade_case(score)
  case score
  when 90..100 then "A"
  when 80..89 then "B"
  when 70..79 then "C"
  when 60..69 then "D"
  when 0..59 then "F"
  else "Invalid score"
  end
end

puts get_letter_grade_case(60)      # D
puts get_letter_grade_case("Hat")   # Invalid score


# Equivalent...at least in outcome
def get_letter_grade_if_else(score)
  if (90..100).include?(score)
    "A"
  elsif (80..89).include?(score)
    "B"
  elsif (70..79).include?(score)
    "C"
  elsif (60..69).include?(score)
    "D"
  elsif (0..59).include?(score)
    "F"
  else
    "Invalid score"
  end
end

puts get_letter_grade_if_else(60)
puts get_letter_grade_if_else("Hat")


# From @julian_rubisch
Note that Proc aliases === to call, so you can also check against lambdas in your case statement!

https://blog.arkency.com/the-equals-equals-equals-case-equality-operator-in-ruby/

And re regexes: you can even use $ notation ($1, $2) to reference matchdata used in the case statement

# From @theleastbad
I'm not! But I'd still love to see if you can fit a simple case + regex + === + $1, $2 example into 280 characters so I can share your excitement.

# From @julian_rubisch 
https://gist.github.com/julianrubisch/946b93cc417f3c89b910623c19a72eb3

URI.open(url) do |uri|
      base_uri = uri.base_uri

      listable_type = case base_uri.to_s
      when /soundcloud.com\/(?<artist>.+)\/tracks/
        raise UnparsableTrackUrlError
      when /soundcloud.com\/(?<artist>.+)\/sets\/(?<title>.+)/
        SoundCloudPlaylist
      when /soundcloud.com\/(?<artist>.+)\/(?<title>.+)/
        SoundCloudTrack
      when /https?:\/\/(?<artist>.+)\.bandcamp.com\/track\/(?<title>.+)/
        BandcampTrack
      when /https?:\/\/(?<artist>.+)\.bandcamp.com\/album\/(?<title>.+)/
        BandcampAlbum
      end

      new listable: listable_type.new, url: base_uri, list: list, artist: $1, title: $2
    end