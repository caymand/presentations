--
-- random input { [1000][10000]i32 }
-- random input { [5][2000000]i32 }
-- entry mapmap [n][m] (arr : [n][m]i32) =
--   map (map (*2)) arr

-- ==
-- random input { [100][100000]i32 [100000]i32 } auto output
-- compiled random input { [6][10000000]i32 [10000000]i32 } auto output
def main [m][n] (X:[m][n]i32) (v: [n]i32) =
   map (\x ->
        reduce (+) 0 (map2 (i32.min) x v)
       ) X
-- random input { 100 }
-- entry mapreduce [m][n] (X:[m][n]i32) =
--    map (\x ->
--         reduce (+) 0 (map2 (*) x v)
--       ) X
