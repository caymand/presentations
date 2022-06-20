-- ==
-- entry: mapped_plus
-- random input { [100][1000000]f32 } auto output
-- compiled random input { [1000000][100]f32 } auto output

entry mapped_plus [m][n] (X: [m][n]f32) =
  let a = replicate n 0
  in reduce (map2 (f32.min)) a X
