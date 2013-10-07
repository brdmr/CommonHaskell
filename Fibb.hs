--First file in commonhaskell repo, bare with me.
fibb 0 = 0
fibb 1 = 1
fibb n = fibb (n-1) + fibb (n-2)
