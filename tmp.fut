
def complex (x: i64) (y: i64) =
  loop acc=x for i < 10 do
    acc * i * y

def main [m][n] (X: [m][n]i64) =
  reduce (map2 (complex)) (replicate n 0) X
