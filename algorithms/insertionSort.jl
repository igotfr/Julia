function insertionSort!(A::Array{Float64})::Array{Float64}
  if A |> isempty || A |> length < 2
    return A;
  end#if

  #sortedItems::Array{Float64} = [];

  for i = 1:length(A)
    item = A[i];
    j = i;

    while j > 1 && item < A[j - 1]
      A[j] = A[j - 1];
      j -= 1;
    end#while

    A[j] = item;
  end#for

  return A;
end#insertionSort()


a = [5., 9., 8., 2., 3., 1.];

println(a);
println(insertionSort!(a));
println(a);
