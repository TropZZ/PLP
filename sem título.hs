bhaskara :: Float -> Float -> Float -> (Float, Float)
bhaskara a b c = 
				let delta = sqrt((b*b) - (4 * a * c))
				in((-b-delta)/(2*a),(-b+delta)/(2*a)) 

 

main = do 
	print $ bhaskara  1 5 4
