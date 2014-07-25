import System.Random

ran :: Int -> IO Int
ran x = do
    g <- getStdGen
    let (a,g1) = randomR (0, x) g
    return a

checkUserNum :: Int -> Int -> Int -> IO Bool
checkUserNum ans ubound chances = do
        putStrLn $ "Guess number between 0 and " ++ show ubound ++ " (" ++ show chances ++ " chances remaining)"
        guess <- (readLn :: IO Int)
        let new_chances = (subtract 1) chances
        if chances > 0
            then if guess == ans 
                then do
                    putStrLn$ "Correct! " ++ show ans ++ " was the number."
                    return True
                else do
                    if guess < ans 
                        then putStrLn$ "Wrong. Try Higher."
                        else putStrLn$ "Wrong. Try Lower."
                    checkUserNum ans ubound new_chances
            else do
                return False
            
main = 
    do
    -- Select an upper bound
    putStrLn "Select upper bound"
    ubound <- readLn
    rnd <- (ran ubound :: IO Int)
    
    let chances = (+ 1) . truncate . log . fromIntegral$ ubound
    -- Loop through user input
    
    result <- (checkUserNum rnd ubound chances :: IO Bool)
    if result == True
        then putStrLn "Correct!"
        else putStrLn "You ran out of chances :("
