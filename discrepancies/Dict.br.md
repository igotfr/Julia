## não vejo como algo bom fugir de padrões enraizados, a menos qe se crie novos padrões com funcionalidades melhores

#### eu poderia usar Named Tuples? sim, mas Named Tuples são ordenadas, Dict's não são ordenadas

como Julia é:

```julia
pessoa = Dict(
  :nome => "Rodrigo",
  :idade => 87,
  :casado => true
)
```

meu ideal:

```julia
pessoa = {
  §nome: "Rodrigo",
  §idade: 87,
  §casado: true
}
```

____________________________________

## :key vs §key

foi optado o símbolo : para keys, muito provavelmente inspirado em Ruby.

Os símbolos @ # $ & % ~ ^ já possuem significado na linguagem e portanto não podem ser usados.

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
