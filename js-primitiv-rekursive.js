
// one plus m
succ = function(m) {
  return m+1;
}
// one minus m (if m==0 -> 0)
pred = function(m) {
  if(m==0) return 0;
  else {
    return m-1;
  }
}

// n * m
mult = function(n,m) {
  if(m==0) return 0;
  else {
    return add(n,mult(n,m-1));
  }
}

// if n>m: n-m else 0
monus = function(n,m) {
  if(m==0) return n;
  else {
    return pred(monus(n,m-1));
  }
}

// n+m
add = function(n,m) {
  if(m==0) return n;
  else {
    return succ(add(n,m-1));
  }
}

// m!
fac = function(n) {
  if(n==0) return 1;
  else {
    return mult(n,fac(n-1));
  }
}

// if(n==even) n/2 else (n-1)/2
half = function(n) {
  if(n==0) return 0;
  else {
    return half(monus(n,2));
  }
}
