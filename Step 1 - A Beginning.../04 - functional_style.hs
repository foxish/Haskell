main = print$ sum_even 0 [1,3,4,5,6]

-- Given a list of integers, return the sum of the even numbers in the list.
sum_even :: (Integral a) => a -> [a] -> a
sum_even sum []   = sum
sum_even sum list = let x = head list
                        xs = tail list
                    in if even x
                       then sum_even (sum+x) xs
                       else sum_even sum xs
