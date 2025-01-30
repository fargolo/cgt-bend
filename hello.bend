# Conway's Games implementation
object Game { left, right }

# Basic constructors
def zero():
  return Game { left: [], right: [] }

def one():
  z = zero()
  return Game { left: [z], right: [] }

def star():
  z = zero()
  return Game { left: [z], right: [z] }

# Simple negation that just swaps sides
def neg(g):
  open Game: g
  return Game { left: g.right, right: g.left }

def main():
  z = zero()       # {|}
  o = one()        # {0|}
  s = star()       # {0|0}
  
  # Test negations
  nz = neg(z)      # {|} -> {|}
  no = neg(o)      # {0|} -> {|0}
  ns = neg(s)      # {0|0} -> {0|0}
  
  return (nz, no, ns)
