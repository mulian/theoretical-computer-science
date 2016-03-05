shuffle = (p1,p2,pre="",array=[]) ->
  split = (p) -> [p.substring(0,1),p.substring(1,p.length)]

  if (p1.length==0 or p2.length==0)
    array.push pre+p1+p2
    return array

  [a,u] = split p1
  [b,v] = split p2

  shuffle(u,b+v,pre+a,array)
  shuffle(a+u,v,pre+b,array)
  return array

module.exports = shuffle
