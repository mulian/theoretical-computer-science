random = (from,to) ->
  value = Math.floor(Math.random() * to+1) + from
  return random from,to-1 if value==to+1
  return value

shuffle = (p1,p2,array=[]) ->
  return p1+p2 if (p1.length==0 or p2.length==0)
  split = (p) ->
    cut = random(0,p.length)
    return [p.substring(0,cut),p.substring(cut)]
  [a,u] = split p1
  [b,v] = split p2

  array.push a+shuffle(u,b+v,array)
  array.push b+shuffle(a+u,v,array)

  return array


module.exports = shuffle
# console.log JSON.stringify shuffle "ab","cd"
