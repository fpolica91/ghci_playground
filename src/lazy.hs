isZero 0 = True 
isZero n = False
loop x = loop x

both _ False = False 
both b True = b