require 'spec_helper'

describe BottlesSongMaker do
  FIRST_LINE = '99 bottles of beer on the wall. 99 bottles of beer. Take one down, pass it around, 98 bottles of beer on the wall.'
  LAST_LINE = 'No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall.'

  before(:each) do
    @song = BottlesSongMaker.new
    @lyric_sheet = @song.print_lyrics_to_array
  end

  describe '#print_lyrics_to_array' do
    it 'should have an array with length of 100' do
      expect(@lyric_sheet.length).to eq(100)
    end

    it 'should have a correct first and last phrase' do
      expect(@lyric_sheet.first).to eq(FIRST_LINE)
      expect(@lyric_sheet.last).to eq(LAST_LINE)
    end
  end
end
