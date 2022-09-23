def to_hex(r, g, b)
  '#' +
    r.to_s(16).rjust(2, '0') +
    g.to_s(16).rjust(2, '0') +
    b.to_s(16).rjust(2, '0')
end

def to_hex(r, g, b)
  hex = '#'
  [r, g, b].each do |n|
    hex += n.to_s(16).rjust(2, '0')
  end
  hex
end

# 10進数を16進数に変える!
def to_hex(r, g, b)
  [r, g, b].sum('#') do |n|
    n.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex)
  [0, 0, 0]
end

def to_ints(hex)
  r = hex[1..2]
  g = hex[3..4]
  b = hex[5..6]
  # byebug
  # 10進数用の空の配列を用意
  ints = []
  [r, g, b].each do |s|
    ints << s.hex
  end
  ints
end

def to_ints(hex)
  r = hex[1..2]
  g = hex[3..4]
  b = hex[5..6]
  [r, g, b].map do |s|
    s.hex
  end
end

def to_ints(hex)
  r, g, b = hex[1..2], hex[3..4], hex[5..6]
  [r, g, b].map do |s|
    s.hex
  end
end

def to_ints(hex)
  r, g, b = hex.scan(/\w\w/)
  [r, g, b].map do |s|
    s.hex
  end
end

def to_ints(hex)
  hex.scan(/\w\w/).map do |s|
    s.hex
  end
end

def to_ints(hex)
  hex.scan(/\w\w/).map(&:hex)
end

def to_ints(hex) = hex.scan(/\w\w/).map(&:hex)