-- NOTE educative Multiple Recursive Calls module

-- NOTE this is NOT efficient
fibonacci :: (Eq a, Num a, Num p) => a -> p
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n -1) + fibonacci (n -2)

fibHelper smaller larger 0 = larger
fibHelper smaller larger steps = fibHelper larger (smaller + larger) (steps - 1)

fastFibonacci 0 = 0
fastFibonacci n = fibHelper 0 1 (n -1)

sequenceCount 0 _ = 1
sequenceCount _ 0 = 1
sequenceCount n0 n1 = sequenceCount n0 (n1 - 1) + sequenceCount n1 (n0 - 1)