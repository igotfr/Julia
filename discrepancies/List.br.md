o calcanhar da Julia seria comportado por um belo salto-alto? parece qe ele é mesmo atingido por separações de uma lista de dados

# Meu ideal

parece até muito simples para mim, não por eu ser inteligente, mas por me parecer bastante intuitivo o qe deveria ser feito.

conjunto de dados separados por , cria uma horizontal

conjunto de dados separados por Space cria uma vertical

a relação , -> horizontal e Space -> vertical é completamente arbitrária e poderia ser invertida sem problemas

; separa linhas e/ou colunas

a quantidade de linhas ou colunas não precisa ser igual, podem ser de tamanhos diferentes, em Julia isso não é possível

Exemplos

```julia
julia> [1, 2, 3]
 1  2  3

julia> [1, 2; 3, 4]
 1  2
 3  4

julia> [1 2; 3 4]
 1  3
 2  4
```

seria possível usar , juntamente com Space mas sem necessidade e só tornaria confuso

```julia
julia> [1, 2; 3 4]
 1  2
 3
 4
```

unpack(array, qtd_unpacks) ao invés de ;

```julia
julia> [[1, 2]]
 [1, 2]

julia> [unpack([[1, 2]])]
 1, 2

julia> [[1 2]] # não sei se esse faria muito sentido
 [1
  2]

julia> [unpack([[1 2]])] # não sei se esse faria muito sentido
 1
 2

julia> [unpack([[[1 2]]], 2)]
 1
 2
```
___

# Comportamento em Julia

# , ; Space

___

## ,

encadea verticalmente.

Não pode ser usado em conjunto com ; ou Space, somente com outros ,

```julia
julia> [1, 2, 3, 4]
4-element Array{Int64,1}:
 1
 2
 3
 4

julia> [1, 2; 3, 4]
ERROR: syntax: unexpected semicolon in array expression
Stacktrace:
 [1] top-level scope at REPL[25]:1

julia> [1, 2 3, 4]
ERROR: syntax: missing separator in array expression
Stacktrace:
 [1] top-level scope at REPL[25]:0
```

___

## Space hcat

encadea horizontalmente

```julia
julia> [1 2]
1×2 Array{Int64,2}:
 1  2

julia> [1 2; 3 4]
2×2 Array{Int64,2}:
 1  2
 3  4
```

___

## ; ou Enter vcat

em arrays este tem 2 comportamentos (começa errado por aí),

funciona da mesma forma como uma qebra de linha ou

faz um unpack do valor à sua esqerda.


```julia
julia> [1 2
       3 4]
2×2 Array{Int64,2}:
 1  2
 3  4
```

funciona da mesma forma qe:

```julia
julia> [1 2; 3 4]
2×2 Array{Int64,2}:
 1  2
 3  4
 ```
 
 unpack:
 
 ```julia
julia> [[1, 2];]
2-element Array{Int64,1}:
 1
 2
```
