não vejo como boa coisa fugir de padrões enraízados, a menos qe se crie novos padrões com funcionalidades melhores

como Julia é:

```julia
pessoa= Dict(
  :nome=> "Rodrigo",
  :idade=> 87,
  :casado=> true)
```

meu ideal:

```julia
pessoa= {
  §nome: "Rodrigo",
  §idade: 87,
  §casado: true}
```

____________________________________

## :key vs §key

foi optado o símbolo : para keys, muito provavelmente inspirado em Ruby.
os símbolos @ # $ & % ~ ^ já possuem significado na linguagem e portanto não podem ser usados.

Somente na tabela extendida de ASCII temos os segintes símbolos qe poderiam ser usados como token de uma key:

facilmente digitado conforme as configurações de um teclado Linux
```julia
  ´ (acento agudo)
  ` (crase)
  ° (alt gr + e)
  º
  · (alt gr + .)
  £ (alt gr + 4)
  ¢ (alt gr + 5)
  ¬ (alt gr + 6)
  § (alt gr + =)
```

Unicodes
```julia
  € (u+20ac)
  ¶ (u+b6)
```

os Unicodes se extendem ainda mais, talvez eu continue algum dia, ou os coloqe em um arqivo separado

Julia usa a tabela extendida de ASCII para diversos outros tokens, esta não seria uma justificativa válida

vou usar o símbolo § para keys, mas apenas estabelecido provisoriamente

____________________________

## Dict() vs {}

## {} vs <> vs ()

Julia usa {} para definir o tipo de uma estrutura de dados, se houver conflito usando {} para tipos de dados e para envolver uma Dict simultaneamente, faria sentido usar <> ao invés de {} para tipos de dados

como Julia é:

```julia
println([[4, 5, 6, 4]])
# Array{Int64,1}[[4, 5, 6, 4]]
```

meu ideal:

```julia
println([[4, 5, 6, 4]])
# Array<Int64,1>[[4, 5, 6, 4]]
ou
# Array(Int64,1)[[4, 5, 6, 4]]
ou manter caso não haja conflito ou ambiguidade
# Array{Int64,1}[[4, 5, 6, 4]]
```
