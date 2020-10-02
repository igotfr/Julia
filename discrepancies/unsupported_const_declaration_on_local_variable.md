```julia
function f()
  const x = "aaa"
  return x
end

println(f())
```

raises:

ERROR: LoadError: syntax: unsupported `const` declaration on local variable around /home/notecomm/testes/teste.jl:2

https://docs.julialang.org/en/v1/manual/variables-and-scoping/#Constants
