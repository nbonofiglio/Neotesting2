SELECT i.led_index, c.led_color, i.id, MIN(i.created_at, c.created_at) AS t1
	, MAX(i.created_at, c.created_at) AS t2
	FROM node_neo_pixel_stick_eight_led_index_logs i 
JOIN node_neo_pixel_stick_eight_led_color_logs c ON c.id = i.id AND 
	c.neo_pixel_stick_eight_id = i.neo_pixel_stick_eight_id 
ORDER BY i.id DESC

SELECT c.led_color
	FROM node_neo_pixel_stick_eight_led_index_logs i 
JOIN node_neo_pixel_stick_eight_led_color_logs c ON c.id = i.id AND 
	c.neo_pixel_stick_eight_id = i.neo_pixel_stick_eight_id 
WHERE i.led_index = 7
ORDER BY i.id DESC
LIMIT 1


	

