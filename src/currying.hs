divides :: Int -> Int -> Bool
divides a b = mod b a == 0

-- flips values
inverseDivides = flip divides

factoryOfTwelve = (flip divides) 12

both True True = True
both _ _ = False

mystery = both True