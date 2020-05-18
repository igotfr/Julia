# RHS (Right-hand side)

é possível em Julia, usando RHS:

atribuição de slice à variável criada

```julia
a = [1, 2, 3, 4, 5, 6][3:5]

# a = [3, 4, 5]
```

reatribuição de slice

```julia
a = [1, 2, 3, 4]

a[1:2] = [5, 6, 7, 8, 9][3:5]

# a = [7, 8, 9, 3, 4]
```

___

# LHS (Left-hand side)

a única razão para implementar o LHS seria em um destructuring, em outros casos, o RHS é sempre possível e mais viável

atribuição de slice à variável criada

```julia
a¬[3:5]= [1, 2, 3, 4, 5, 6]

# a = [3, 4, 5]
```

reatribuição de slice

```julia
a = [1, 2, 3, 4]

a[1:2]¬[3:5] = [5, 6, 7, 8, 9]

# a = [7, 8, 9, 3, 4]
```

___

## Exemplos com destructuring:

atribuição de slice à variável criada

```julia
a, b, c¬[4:6] = [1, 2, 3, 4, 5, 6]

# a = 1     b = 2
# c = [4, 5, 6]
```

reatribuição de slice

```julia
c = [7, 8, 9, 10, 11, 12]

a, b, c[2:5]¬[4:6] = [1, 2, 3, 4, 5, 6]

# a = 1     b = 2
# c = [7, 4, 5, 6, 12]
```
