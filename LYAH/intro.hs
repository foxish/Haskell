-- functions

doubleFuncXY x y = doubleFuncX x + doubleFuncX y
doubleFuncX x = x*2
ifCondX x = if x > 100 then x else doubleFuncX x
ifCondX' x = (if x > 100 then x else doubleFuncX x) + 10
darkCthulhu = "Woof! Woof!"

-- lists
list1 = [1,2,3,4]
list2 = 1:list1 --cons operator
listE1 = doubleFuncX (length (tail list1))
listE2 = take 2 (drop 1 (tail list1))
listMax = maximum list1
listMin = minimum list1
listSum = sum list1
listProd = product list1

--both evaluate to True
listExists3 = 3 `elem` list1 && length list1 > 2
listExists10 = 10 `elem` list1 || length list1 == 4

--ranges
range1 = [1..10]
range2 = [10,9..1]
range3 = [7,14..84]
rangeChar = ['k','m'..'z']
rangeF1 = [0.3,0.6..2.7]
range13 = take 20 (cycle (take 10 [13,26..]))
rangeRep = take 20 (repeat 10) --simpler to just use the replicate function

--comprehensions
listComp1 = [x | x <- [1..100], x `mod` 3 == 0 && x `mod` 5 == 0]
listComp2 xs = [x | x <- [1..100], x `mod` xs == 0]
listComp3 xs = [if x < 10 then "abc" else "def" | x <- xs, odd x]

--multiply lists
m1 = [1,2,3]
m2 = [4,5,6]
m3 = [x*y |  x <- m1, y <- m2]

v1 = ["dog", "cat", "bird", "mouse"]
v2 = ["woof", "meow", "tweet", "squeak"]
v3 = [ str1 ++ " goes " ++ str2 | (str1, str2) <- v1 `zip` v2 ]
zipit = zip v1 v2

---no named parameter
length' xs = sum [1 | _ <- xs]

---list of lists
mLevel = [[1,2,3,4,5],[5,6,7,8,9],[10,11,12,13,14]]
mLevelOdd = [[ x | x <- xs, odd x] | xs <- mLevel]
mLevelEven = [[ x | x <- xs, even x] | xs <- mLevel]

---tuples
tup1 = (1, 2)
fst' = fst tup1
snd' = snd tup1

---zip
zip1 = zip [1..] ['a'..'z']
zip2 = zip [1..10] ['a'..]
validTriangles = [(a,b,c) | a <- [1..10], b <- [1..10], c <- [1..10], (a + b) > c, a^2 + b^2 == c^2]

--factorial
factorial n = product [1..n]


---read and write
read1 = read "5" :: Int

---Pattern matching
patt1 10 = "hurr"
patt1 x = if x < 5 then "hee" else "haw"

factorial2 :: ( Integral a) => a -> a
factorial2 0 = 1
factorial2 n = n * factorial (n - 1)

---typeclasses
addVectors :: ( Num a) => (a, a) -> (a, a) -> (a, a)
addVectors (x1,y1) (x2,y2) = (x1 + x2, y1 + y2)






