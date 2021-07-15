double number = number * 2

quadruple = double . double

applyTwice fn = fn . fn

applyTimes :: (Int -> Int) -> Int -> (Int -> Int)
applyTimes fn 1 = fn
applyTimes fn times = fn . applyTimes fn (times -1)