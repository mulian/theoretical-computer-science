# L = {ab,abc,bc,cc}
# (normal) links: ab\L => {epsilon,c}
# (normal) links: a\L => {b,bc}
residuierungLinks = (p,set) ->
  set = set.split(',')
  array = []
  for val in set
    array.push val.substring(p.length) if p == val.substring(0,p.length)
  return array

# L = {ab,abc,bc,cc}
# rechts: L/c   => {ab,b,c}
residuierungRechts = (p,set) ->
  set = set.split(',')
  array = []
  for val in set
    split = val.length-p.length
    array.push val.substring(0,split) if p == val.substring(split)
  return array

module.exports = {} =
  left: residuierungLinks
  right: residuierungRechts
