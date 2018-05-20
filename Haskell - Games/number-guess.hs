import System.Random

ran :: Int -> IO Int
ran x = do
    g <- getStdGen
    let (a,_) = randomR (0, x) g
    return a

checkUserNum :: Int -> Int -> Int -> IO Bool
checkUserNum ans ubound chances = do
        if (chances > 0) then do
          putStrLn $ "Guess number between 0 and " ++ show ubound ++ " (" ++ show chances ++ " chances remaining)"
          guess <- (readLn :: IO Int)
          let res = (isCorrect ans guess)
          putStrLn res
          checkUserNum ans ubound (chances-1)
        else return False

main = do
    -- Select an upper bound
    putStrLn "Select upper bound"
    ubound <- readLn
    rnd <- (ran ubound :: IO Int)
    let chances = (+ 1) . truncate . log . fromIntegral$ ubound
    -- Loop through user input

    result <- (checkUserNum rnd ubound chances :: IO Bool)
    if result /= True
        then putStrLn "You ran out of chances :("
        else return  ()

isCorrect :: Int -> Int -> String
isCorrect ans guess
  | guess == ans = "Correct! " ++ show ans ++ " was the number."
  | guess < ans  = "Wrong. Try Higher."
  | otherwise    = "Wrong. Try Lower."
