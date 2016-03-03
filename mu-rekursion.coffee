PrimitivRekursive = require('./primitiv-rekursive')

module.exports =
class MuRekursion extends PrimitivRekursive
  # sign (vorzeichen)
  sg: (x) ->
    return 0 if x==0
    return 1 if x>0
  # sign kompliment ()
  cosg: (x) ->
    return @monus(1,@sg(x))

  lt: (x,y) ->
    return @sg(@monus(y,x))
  gt: (x,y) ->
    return @sg(@monus(x,y))

  eq: (x,y) ->
    # return @cosg(@add(@monus(x,y),@monus(y,x)))


mu = new MuRekursion()

console.log mu.sg(0)
console.log mu.lt(1,3)
console.log mu.lt(3,1)
console.log mu.gt(1,3)
console.log mu.gt(3,1)
console.log mu.eq(3,1)
console.log mu.eq(3,3)
