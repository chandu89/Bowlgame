class Game < ApplicationRecord
  has_many :frames, inverse_of: :game

  def new_ball(pins)
    frame = next_frame
    return false unless frame
    frame.balls.build pins: pins
    frame.save
  end

  private
  def next_frame
    if frames.last&.incomplete?
      frames.last
    elsif frames.count == 10
      nil
    else
      Frame.new(game: self)
    end
  end
end
