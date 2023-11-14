class BottlesSongMaker
  def initialize
    @array_of_lyrics = []
    @current_quantity = @@initial_quantity
  end

  @@initial_quantity = 99

  @@last_line = "No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, #{@@initial_quantity} bottles of beer on the wall."

  def print_lyrics_to_array
    while @current_quantity >= 0
      if @current_quantity.positive?
        @array_of_lyrics.push(song_line_builder(@current_quantity))
      else
        @array_of_lyrics.push(@@last_line)
      end

      @current_quantity -= 1
    end
    @array_of_lyrics
  end

  private

  def bottle_phrase_builder(quantity)
    case quantity
    when 1
      "#{quantity} bottle of beer"
    else
      "#{quantity} bottles of beer"
    end
  end

  def song_line_builder(quantity)
    if quantity >= 2
      last_phrase = bottle_phrase_builder(quantity - 1)
    elsif quantity == 1
      last_phrase = 'no more bottles of beer'
    end

    placeholder_hash = {
      first: bottle_phrase_builder(quantity),
      second: bottle_phrase_builder(quantity),
      last: last_phrase
    }

    "#{placeholder_hash[:first]} on the wall. #{placeholder_hash[:second]}. Take one down, pass it around, #{placeholder_hash[:last]} on the wall."
  end
end
