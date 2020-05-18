meu ideal:

```julia
a = [1, 2, 3, 4]

a[1:2] = [5, 6, 7]

# a = [5, 6, 7, 3, 4]
```

como Julia é:

```julia
a = [1, 2, 3, 4]

a[1:2] = [5, 6, 7]

ERROR: DimensionMismatch("tried to assign 3 elements to 2 destinations")
Stacktrace:
 [1] throw_setindex_mismatch(::Array{Int64,1}, ::Tuple{Int64}) at ./indices.jl:191
 [2] setindex_shape_check at ./indices.jl:242 [inlined]
 [3] setindex!(::Array{Int64,1}, ::Array{Int64,1}, ::UnitRange{Int64}) at ./array.jl:851
 [4] top-level scope at REPL[3]:1
```
