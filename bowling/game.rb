# Our goal today is to write a program (or just a method) that returns the total score
# for a game of bowling. We'll start with simple examples, but the rules can get quite
# confusing. The goal of the interview is to talk through decisions and dealing with
# new requirements.
#
# You very probably won't get through every example before time is done. That's expected.
#
# Any language is fine, as is either object oriented or procedural code.If you don't
# know the basics of how bowling works, you should ask up front.


class Bowling
  attr_accessor :pins, :frames

  def initialize(pins)
    @pins = pins
    @frames = pins.each_slice(2).to_a
  end

  def score
    score = 0
    frames.each do |frame|
      score += frame_score(frame)
    end
    return score
  end

  def frame_score(frame)
    score = 0
    frame.each do |pin|
      score += pin.to_i
    end
    score
  end

end
