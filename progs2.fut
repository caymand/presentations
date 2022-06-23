-- ==
-- random input { [6][10000000]i32 [10000000]i32 } auto output
def main [m][n] (X:[m][n]i32) (v: [n]i32) =
   map (\x ->
        reduce (+) 0 (map2 (i32.min) x v)
       ) X
