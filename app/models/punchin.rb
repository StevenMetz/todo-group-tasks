class Punchin < ApplicationRecord
  belongs_to :employee

  def time_clock
    punchins.punch_in
    punchins.punch_out
  end

  def punch_in
    time_in.strftime("%D %r")
  end

  def punch_out
    time_out.strftime("%D %r")
  end

  def friendly_date
    date.strftime("%d %e %j")
  end

  def friendly_created_at
    created_at.strftime("%B %e, %Y %r")
  end

  def friendly_updated_at
    updated_at.strftime("%B %e, %Y %r")
  end
end
