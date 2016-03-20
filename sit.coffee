Array.prototype.sum = ->
  sum = Number(0)
  # console.log @
  for item in @
    sum += Number(item)
  return sum

Array.prototype.addNew = (value,aKey) ->
  currentItem = @length
  for item,key in @
    @push {} =
      value: Number(item.value)+Number(value)
      backtrace: [key,currentItem]
      aKey: aKey if key==0

Array.prototype.toString = ->
  str = ""
  for item,key in @
    str += "#{key}: #{JSON.stringify(item)}\n"
  return str

Array.prototype.removeVal = (val) ->
  console.log "rm #{val.value}"
  for item,key in @
    if Number(item) == Number(val.value)
      @splice key,1
      break

module.exports = {} =
  #aMenge = Anfangs Menge
  #eMenge = ergebnis Menge
  optimal_algorithmus: (k,aMenge,eMenge=[]) ->
    ro = Number(aMenge.sum()/k)
    console.log "ro: #{ro}"
    B = new Array()
    B.push({value:0})

    for item,key in aMenge
      B.addNew item, key
    console.log B.toString()
    choosen = {value:aMenge.sum()}
    for item in B
      if Number(item.value)>ro && Number(item.value) < choosen.value
        choosen = item
    eMenge.push choosen

    if Number(k)<=2
      otherValue = aMenge.sum() - choosen.value
      for item in B
        if Number(item.value) == otherValue
          eMenge.push item
          return eMenge
    else
      for item in eMenge
        for btItem in item.backtrace
          aMenge.removeVal B[btItem]
      # console.log aMenge
      @optimal_algorithmus(k-1,aMenge,eMenge)
      # console.log "jo"

  algorithmus: ->
    #undef
    retun 0
