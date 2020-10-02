function insertionSort!(Aexterno::Array{T})::Array{T} where T <: Number
  if Aexterno |> isempty || Aexterno |> length < 2
    return Aexterno;
  end#if

  #Ainterno::Array{Number} = copy(A);

  for i = 1:length(Aexterno)
    item = Aexterno[i];
    j = i;

    while j > 1 && item < Aexterno[j - 1]
      Aexterno[j] = Aexterno[j - 1];
      j -= 1;
    end#while

    Aexterno[j] = item;
  end#for

  return Aexterno;
end#insertionSort()

function insertionSort(Aexterno::Array{T})::Array{T} where T <: Number
  if Aexterno |> isempty || Aexterno |> length < 2
    return Aexterno;
  end#if

  Ainterno::Array{T} = copy(Aexterno);

  for i = 1:length(Ainterno)
    item = Ainterno[i];
    j = i;

    while j > 1 && item < Ainterno[j - 1]
      Ainterno[j] = Ainterno[j - 1];
      j -= 1;
    end#while

    Ainterno[j] = item;
  end#for

  return Ainterno;
end#insertionSort()


a = [5, 9, 8, 2, 3, 1];

println(a);
println(insertionSort!(a));
println(a);
println();

b = [5, 9, 8, 2, 3, 1];

println(b);
println(insertionSort(b));
println(b);
