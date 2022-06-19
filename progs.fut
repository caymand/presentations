-- ==
-- random input { [1000][10000]i32 }
-- random input { [5][2000000]i32 }
entry mapmap [n][m] (arr : [n][m]i32) =
  map (map (*2)) arr

-- ==
-- random input { [5][1000000]i32 [1000000]i32 } auto output
def main [m][n] (X:[m][n]i32)  =
  let v = map i32.i64 (iota n)
  in  map (\x ->
        reduce (+) 0 (map2 (*) x v)
      ) X
