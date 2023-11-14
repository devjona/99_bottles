require 'spec_helper'

describe BottlesSongMaker do
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

    it 'should have the correct phrase when there are two bottles left' do
      expect(@lyric_sheet[@lyric_sheet.length - 3]).to eq(TWO_BOTTLES_LEFT)
    end

    it 'should have the correct phrase when there is one bottle left' do
      expect(@lyric_sheet[@lyric_sheet.length - 2]).to eq(ONE_BOTTLE_LEFT)
    end
  end
end
