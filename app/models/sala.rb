class Sala < ActiveRecord::Base
  validates :sala_number, :seat_rows, :seat_columns, presence: true
end
