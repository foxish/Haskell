main = do 
    print$ abs' 5
    putStrLn $ showInfos name color
    
-- guards
abs' :: (Num a, Ord a) => a -> a
abs' x
    | x >= 0 = x
    | otherwise = -x

-- data constructors (user-defined types)
data Name   = NameConstr String
data Color  = ColorConstr String

showInfos :: Name ->  Color -> String
showInfos (NameConstr name) (ColorConstr color) =
      "Name: " ++ name ++ ", Color: " ++ color

name  = NameConstr "XYZ"
color = ColorConstr "RED"
