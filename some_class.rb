class BottlesSongMaker
  def initialize
    @array_of_lyrics = []
    @current_quantity = @@initial_quantity
  end

  @@initial_quantity = 99

  @@last_line = "No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, #{@@initial_quantity} bottles of beer on the wall."

  def song_line_builder(quantity)
    last_use = case quantity
               when quantity == 1
                 'no more'
               else quantity - 1
               end

    "#{quantity} bottles of beer on the wall. #{quantity} bottles of beer. Take one down, pass it around, #{last_use} bottles of beer on the wall."
  end

  def print_lyrics_to_array
    while @current_quantity >= 0
      if @current_quantity > 0
        @array_of_lyrics.push(song_line_builder(@current_quantity))
      else
        @array_of_lyrics.push(@@last_line)
      end

      @current_quantity -= 1
    end
    @array_of_lyrics
  end
end
