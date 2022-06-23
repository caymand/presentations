--
-- entry: originalplus
--          random input { [100]f32 100000i64 } auto output
-- compiled random input { [100000]f32 100i64 } auto output
-- compiled random input { [1000]f32 100000i64 } auto output
-- compiled random input { [100000]f32 1000i64 } auto output

-- entry originalplus  [n] (b: [n]f32) (m: i64): [n]f32 =
--   let a = replicate n 0.0
--   let X = replicate m b
--   in reduce (map2 (+)) a X

-- ==
-- entry: mapped_plus
-- random input { [100][1000000]f32 } auto output
-- random input { [1000000][100]f32 } auto output
-- random input { [1000][100000]f32 } auto output
-- compiled random input { [100000][1000]f32 } auto output
-- compiled random input { [100000000][1]f32 } auto output
entry mapped_plus [m][n] (X: [m][n]f32) : [n]f32 =
  let a = replicate n 0
  in reduce (map2 (f32.min)) a X
-- random input { [10000000][10]f32 } auto output
