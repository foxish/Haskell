main = do
    print$ f 1 2

sqr = \x -> x*x
-- sqr' = (^2) -- is equivalent

f :: Int -> Int -> Int
f x y = sqr x + sqr y

