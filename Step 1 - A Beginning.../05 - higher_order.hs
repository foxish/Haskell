main = do
    let getfn2 = getfn 2
    putStrLn . show$ getfn2 4 8

getfn :: Int -> Int -> Int -> Int
getfn x y z = (1000 * x) + (100 * y) + (10 * z)
