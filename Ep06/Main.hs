data MyData = FirstData
            | SecondData
            | LastData
              deriving (Show, Bounded, Ord, Read, Enum)

newtype MyId = Id { getId :: Int }

instance Show MyId where
    show a = show (getId a)

instance Eq MyData where
     FirstData  == SecondData = True
     FirstData  == FirstData  = True
     SecondData == SecondData = True
     LastData   == LastData   = True
     _ == _                   = False