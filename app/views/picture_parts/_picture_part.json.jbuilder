#json.extract! picture_part, :id, :top_left_x , :created_at, :updated_at
json.part_id part.id
json.edgeCoordinatesUp [part.top_left_x, part.top_right_x]
json.edgeCoordinatesDown [part.bottom_left_x, part.bottom_right_x]
json.image_part part.image_part
