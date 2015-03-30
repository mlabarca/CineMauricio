json.extract! @sala, :sala_number, :seat_rows, :seat_columns
json.seat_amount @sala.seat_rows * @sala.seat_columns
json.seat_positions (1...((@sala.seat_rows * @sala.seat_columns) + 1))  do |seat_number|
	json.set! seat_number do
		json.row (seat_number/@sala.seat_columns.to_f).ceil 
		json.col seat_number - ((seat_number/@sala.seat_columns.to_f).ceil - 1)  * @sala.seat_columns
	end
end
