module.exports =
class PrimitivRekursive
  # one plus m
  succ: (m) ->
    m + 1
  # one minus m (if m==0 -> 0)
  pred: (m) ->
    return 0 if m == 0
    return m - 1
  # n * m
  mult: (n, m) ->
    return 0 if m == 0
    return @add(n, @mult(n, m - 1))

  # if n>m: n-m else 0
  monus: (n, m) ->
    return n if m == 0
    return @pred( @monus(n, m - 1) )

  # n+m
  add: (n, m) ->
    n if m == 0
    return @succ(@add(n, m - 1))

  # m!
  fac: (n) ->
    return 1 if n == 0
    return @mult(n, @fac(n - 1))

  # if(n==even) n/2 else (n-1)/2
  half: (n) ->
    return 0 if n == 0
    return @half(@monus(n, 2))
