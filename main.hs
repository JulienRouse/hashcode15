--File main.hs


import System.IO
import qualified Data.Map as M


type Coord = (Int,Int)
type Size = Int
type Capacity = Int
type Groupe = Int | None


data Slot = Empty 
           | Server Int 
           | Unavailable
             deriving (Eq)

instance Show Slot where
  show Empty = "_"
  show $ Server n = show n
  show Unavailable = "X"


data Server = Size Capacity Groupe


data World = World { wSlots :: M.Map Coord Slot,
                     wServers :: [Server]}
                     
             
  

main = do
  contents <- readFile "input.txt"
  let x =  map readInt . words $ contents
  let r = x !! 0 
      s = x !! 1
      u = x !! 2
      p = x !! 3
      m = x !! 4
  --on enleve les 5 premiers elements de la liste
  resteList = drop 5 x
  --la liste qui contient les emplacements non-dispo
  unavailableList = take u resteList
  --la liste des serveurs a placer
  serverList = drop u resteList
  
  populateWorld r s u p m
  
  print nbRange
      
readInt :: String -> Int
readInt = read




populateServer :: World -> Int -> World
populateServer w 0 = w
populateServer w m = 


populateWorld :: World -> Int -> Int -> Int -> Int -> Int -> World 
populateWorld w r s u p m = undefined
                            where
                              


