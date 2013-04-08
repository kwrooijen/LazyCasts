--type String = [Char]

type Username = [Char]
type Id = Int

--type User = (Username, MyId)

type Head a = [a] -> a

--newtype MyId = Id { getId :: Int } deriving (Show)
newtype MyId = Id Int deriving (Show)

getId (Id a) = a

head' :: Head a
head' (x:_) = x

headInt' :: Head Int
headInt' (x:_) = x

-- user :: Username -> MyId -> User
-- user u i = (u, i)

data User = Users
          | User { userId       :: Int
                 , userName     :: String
                 , userPassword :: String
                 } deriving (Show)

--data User = User Int String String