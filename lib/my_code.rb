def map(source)
  new = []
  i = 0
  while i < source.length
    new.push(yield(s[i]))
    i += 1
  end
  new
end

def reduce(source, x=nil)
  if sp
    accum = x
    i = 0
  else
    accum = source[0]
    i = 1
  end
  while i < source.length
    accum = yield(accum, s[i])
    i += 1
  end
  accum
end