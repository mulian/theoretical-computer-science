PrimitivRekursive = require('./primitiv_rekursive')

class MuRekursion extends PrimitivRekursive
  # sign (vorzeichen)
  sg: (x) ->
    return 0 if x==0
    return 1 if x>0

  # sign kompliment ()
  cosg: (x) ->
    return @monus(1,@sg(x))



mu = new MuRekursive()

console.log mu.sg(0)
