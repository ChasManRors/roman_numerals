# !/usr/bin/env ruby

require 'fileutils'
require 'pry'

# Create a RomanNumerals class that can convert a roman numeral to and from an integer value. It should follow the API
# demonstrated in the examples below. Multiple roman numeral values will be tested for each helper method.

# Modern Roman numerals are written by expressing each digit separately starting with the left most digit and skipping
# any digit with a value of zero. In Roman numerals 1990 is rendered: 1000=M, 900=CM, 90=XC; resulting in MCMXC. 2008
# is written as 2000=MM, 8=VIII; or MMVIII. 1666 uses each Roman symbol in descending order: MDCLXVI.

# Examples
# RomanNumerals.to_roman(1000) # should return 'M'
# RomanNumerals.from_roman('M') # should return 1000

# Roman Numeral   I V X   L   C   D   M
# Arabic Numeral	1	5	10	50	100	500	1,000

# KEY_romAN_numBERS = %w{I V X   L   C   D   M}
# => ["I", "V", "X", "L", "C", "D", "M"]
# CORRESPONDING_ARABIC_NUMBERS = %w{ 1       5       10      50      100     500     1000 }
# => ["1", "5", "10", "50", "100", "500", "1000"]
# rom_to_arb = KEY_romAN_numBERS.zip CORRESPONDING_ARABIC_NUMBERS
# => [["I", "1"], ["V", "5"], ["X", "10"], ["L", "50"], ["C", "100"], ["D", "500"], ["M", "1000"]]
# going from small to big => subtract
# going grom big to small => add

class RomanNumerals
  CORRESPONDING_ARABIC_NUMBERS = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
  KEY_ROMAN_NUMBERS = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
  ARABIC_TO_ROMAN_MAP = CORRESPONDING_ARABIC_NUMBERS.zip(KEY_ROMAN_NUMBERS).to_h
  ROMAN_TO_ARABIC_MAP = ARABIC_TO_ROMAN_MAP.to_a.select { |_a, b| b.length == 1 }.to_h.invert

  class << self
    def to_roman(int_value)
      answer = ''
      ARABIC_TO_ROMAN_MAP.each do |num, symb|
        while int_value >= num
          answer << symb
          int_value -= num
        end
      end
      answer
    end

    def from_roman(number)
      index = 0
      answer = 0
      letters = number.chars
      while index < letters.size
        glyph = letters[index]
        val = ROMAN_TO_ARABIC_MAP[glyph]
        next_glyph = letters[index + 1]
        next_val = next_glyph && ROMAN_TO_ARABIC_MAP[next_glyph]
        index += 1
        mult = 1
        mult = -1 if next_glyph && next_val > val

        answer += (val * mult)
      end
      answer
    end
  end
end
