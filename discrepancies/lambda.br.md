https://github.com/JuliaLang/julia/pull/24990

how would it be:

```julia
a -> y |> filter(_(_ > 2), y) |> map(_(_ * 2), y)  # [6, 8]
or
a -> y |> filter(_(_x > 2), y) |> map(_(_x * 2), y)  # [6, 8]
or
a -> y |> filter(fn(_x > 2), y) |> map(fn(_x * 2), y)  # [6, 8]
```

how Julia does:

```julia
a = [0, 1, 2, 3, 4]

a |> y -> filter(x -> x > 2, y) |> y -> map(x -> x * 2, y)  # [6, 8]
```
