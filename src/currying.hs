divides :: Int -> Int -> Bool
divides a b = mod b a == 0

both True True = True
both _ _ = False

mystery = both True