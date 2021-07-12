-- example of function that takes tuple as argument

perimeter (a, b) = (2 * a) + (2 * b)

areBothTrue (True, True) = True
areBothTrue (_, _) = False

isSquare (a, b)
  | a == b = True
  | otherwise = False

area (a, b) = a * b

areaAndPerimeter :: Num b => (b, b) -> (b, b)
areaAndPerimeter (a, b) = (area (a, b), perimeter (a, b))

simplifiedAreaPer :: Num b => (b, b) -> (b, b)
simplifiedAreaPer tup = (area tup, perimeter tup)

ifThenElse (True, t, f) = t
ifThenElse (b, t, f) = f
