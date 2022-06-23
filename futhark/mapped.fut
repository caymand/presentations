
-- ==
-- entry: mapped_plus
-- random input { [100][1000000]f32 } auto output
-- compiled random input { [1000][10000]f32 } auto output
-- compiled random input { [10000][1000]f32 } auto output
-- compiled random input { [100000][100]f32 } auto output
-- compiled random input { [1000000][10]f32 } auto output

entry mapped_plus [m][n] (X: [m][n]f32) =
  let a = replicate n 0
  in reduce (map2 (+)) a X

-- ==
-- entry: mapped_min
-- random input { [100][1000000]f32 } auto output
-- compiled random input { [1000][10000]f32 } auto output
-- compiled random input { [10000][1000]f32 } auto output
-- compiled random input { [100000][100]f32 } auto output
-- compiled random input { [1000000][10]f32 } auto output

entry mapped_min [m][n] (X: [m][n]f32) =
  let a = replicate n 0
  in reduce (map2 (f32.min)) a X

-- ==
-- entry: mapped_plus_big
-- random input { [100][1000000]f64 } auto output
-- compiled random input { [1000][10000]f64 } auto output
-- compiled random input { [10000][1000]f64 } auto output
-- compiled random input { [100000][100]f64 } auto output
-- compiled random input { [1000000][10]f64 } auto output

entry mapped_plus_big [m][n] (X: [m][n]f64) =
  let a = replicate n 0
  in reduce (map2 (+)) a X

-- ==
-- entry: mapped_min_big
-- random input { [100][1000000]f64 } auto output
-- compiled random input { [1000][10000]f64 } auto output
-- compiled random input { [10000][1000]f64 } auto output
-- compiled random input { [100000][100]f64 } auto output
-- compiled random input { [1000000][10]f64 } auto output

entry mapped_min_big [m][n] (X: [m][n]f64) =
  let a = replicate n 0
  in reduce (map2 (f64.min)) a X


-- ==
-- entry: original
-- random input { [1000]f32 10000i64 } auto output
-- compiled random input { [10000]f32 1000i64 } auto output
-- compiled random input { [100000]f32 100i64 } auto output
-- compiled random input { [1000000]f32 10i64 } auto output

entry original  [n] (b: [n]f32) (m: i64): [n]f32 =
  let a = replicate n 0.0
  let X = replicate m b
  in reduce (map2 (f32.min)) a X

-- ==
-- entry: originalplus
--          random input { [100]f32 100000i64 } auto output
-- compiled random input { [1000]f32 10000i64 } auto output
-- compiled random input { [10000]f32 1000i64 } auto output
-- compiled random input { [100000]f32 100i64 } auto output
-- compiled random input { [1000000]f32 10i64 } auto output

entry originalplus  [n] (b: [n]f32) (m: i64): [n]f32 =
  let a = replicate n 0.0
  let X = replicate m b
  in reduce (map2 (+)) a X
