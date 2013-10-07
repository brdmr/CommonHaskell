-- Simple data model to describe possible values of a Form
data Form a = Add (Form a) (Form a) | 
              Mul (Form a) (Form a) | 
              Div (Form a) (Form a) | 
              Min (Form a) (Form a) | 
              Num a

-- Simple typematching, one of several beauties with Haskell
calc (Num a)   = a
calc (Add a b) = calc a + calc b
calc (Mul a b) = calc a * calc b
calc (Div a b) = calc a / calc b
calc (Min a b) = calc a - calc b

-- Let's add a comment saying that I'd like to
-- add an expression matcher in the future,
-- and then add this to calc branch, but not master..?
