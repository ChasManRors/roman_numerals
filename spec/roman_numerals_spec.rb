# create your sample spec in the root/spec dir
require 'spec_helper'
require_relative '../roman_numerals'

describe RomanNumerals do
  context 'send it to_roman message' do
    it 'converts the integer 1 to a roman numeral I' do
      expect(RomanNumerals.to_roman(1)).to eq('I')
    end
    it 'converts arb numeral 2 to roman II' do
      expect(RomanNumerals.to_roman(2)).to eq('II')
    end
    it 'converts arb numeral 4 to roman IV' do
      expect(RomanNumerals.to_roman(4)).to eq('IV')
    end
    it 'converts arb numeral 5 to roman V' do
      expect(RomanNumerals.to_roman(5)).to eq('V')
    end
    it 'converts arb numeral 6 to roman VI' do
      expect(RomanNumerals.to_roman(6)).to eq('VI')
    end
    it 'converts arb numeral 8 to roman VIII' do
      expect(RomanNumerals.to_roman(8)).to eq('VIII')
    end
    it 'converts arb numeral 9 to roman IX' do
      expect(RomanNumerals.to_roman(9)).to eq('IX')
    end
    it 'converts arb numeral 10 to roman X' do
      expect(RomanNumerals.to_roman(10)).to eq('X')
    end
    it 'converts arb numeral 20 to roman XX' do
      expect(RomanNumerals.to_roman(20)).to eq('XX')
    end
    it 'converts arb numeral 30 to roman XXX' do
      expect(RomanNumerals.to_roman(30)).to eq('XXX')
    end
    it 'converts arb numeral 40 to roman XL' do
      expect(RomanNumerals.to_roman(40)).to eq('XL')
    end
    it 'converts arb numeral 50 to roman L' do
      expect(RomanNumerals.to_roman(50)).to eq('L')
    end
    it 'converts arb numeral 90 to roman XC' do
      expect(RomanNumerals.to_roman(90)).to eq('XC')
    end
    it 'converts arb numeral 100 to roman C' do
      expect(RomanNumerals.to_roman(100)).to eq('C')
    end
    it 'converts arb numeral 400 to roman CD' do
      expect(RomanNumerals.to_roman(400)).to eq('CD')
    end
    it 'converts arb numeral 900 to roman CM' do
      expect(RomanNumerals.to_roman(900)).to eq('CM')
    end
    it 'converts arb numeral 1000 to roman M' do
      expect(RomanNumerals.to_roman(1000)).to eq('M')
    end
    it 'converts arb numeral 1827 to roman MDCCCXXVII' do
      expect(RomanNumerals.to_roman(1827)).to eq('MDCCCXXVII')
    end
    it 'converts arb numeral 3999 to roman MDCCCXXVII' do
      expect(RomanNumerals.to_roman(3999)).to eq('MMMCMXCIX')
    end
  end

  context 'send it from_roman message' do
    it 'converts the integer 1 to a roman numeral I' do
      expect(RomanNumerals.from_roman('I')).to eq(1)
    end
    it 'converts arb numeral 2 to roman II' do
      expect(RomanNumerals.from_roman('II')).to eq(2)
    end
    it 'converts arb numeral 4 to roman IV' do
      expect(RomanNumerals.from_roman('IV')).to eq(4)
    end
    it 'converts arb numeral 5 to roman V' do
      expect(RomanNumerals.from_roman('V')).to eq(5)
    end
    it 'converts arb numeral 6 to roman VI' do
      expect(RomanNumerals.from_roman('VI')).to eq(6)
    end
    it 'converts arb numeral 8 to roman VIII' do
      expect(RomanNumerals.from_roman('VIII')).to eq(8)
    end
    it 'converts arb numeral 9 to roman IX' do
      expect(RomanNumerals.from_roman('IX')).to eq(9)
    end
    it 'converts arb numeral 10 to roman X' do
      expect(RomanNumerals.from_roman('X')).to eq(10)
    end
    it 'converts arb numeral 20 to roman XX' do
      expect(RomanNumerals.from_roman('XX')).to eq(20)
    end
    it 'converts arb numeral 30 to roman XXX' do
      expect(RomanNumerals.from_roman('XXX')).to eq(30)
    end
    it 'converts arb numeral 40 to roman XL' do
      expect(RomanNumerals.from_roman('XL')).to eq(40)
    end
    it 'converts arb numeral 50 to roman L' do
      expect(RomanNumerals.from_roman('L')).to eq(50)
    end
    it 'converts arb numeral 90 to roman XC' do
      expect(RomanNumerals.from_roman('XC')).to eq(90)
    end
    it 'converts arb numeral 100 to roman C' do
      expect(RomanNumerals.from_roman('C')).to eq(100)
    end
    it 'converts arb numeral 400 to roman CD' do
      expect(RomanNumerals.from_roman('CD')).to eq(400)
    end
    it 'converts arb numeral 900 to roman CM' do
      expect(RomanNumerals.from_roman('CM')).to eq(900)
    end
    it 'converts arb numeral 1000 to roman M' do
      expect(RomanNumerals.from_roman('M')).to eq(1000)
    end
    it 'converts arb numeral 1827 to roman MDCCCXXVII' do
      expect(RomanNumerals.from_roman('MDCCCXXVII')).to eq(1827)
    end
    it 'converts arb numeral 3999 to roman MDCCCXXVII' do
      expect(RomanNumerals.from_roman('MMMCMXCIX')).to eq(3999)
    end
  end
end
