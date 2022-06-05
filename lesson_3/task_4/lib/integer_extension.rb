# frozen_string_literal: true

module RomanNumbers
  ONES = %w[I II III IV V VI VII VIII IX].freeze
  TENS = %w[X XX XXX XL L LX LXX LXXX XC].freeze
  HUNDREDS = %w[C CC CCC CD D DC DCC DCCC CM].freeze
  THOUSANDS = %w[M MM MMM].freeze
  SUPPORT_ARR = [ONES, TENS, HUNDREDS, THOUSANDS].freeze

  def roman(divider = 1000)
    demoresult = (self / divider).positive? ? SUPPORT_ARR[Math.log10(divider)][self / divider - 1] : ''
    number_left = self - (self / divider) * divider
    demoresult + (number_left.positive? ? number_left.roman(divider / 10) : '')
  end
end
