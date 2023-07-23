def merge_sort(a)
  return a unless a.length > 1

  b = merge_sort(a[0..(a.length + 1) / 2 - 1])
  c = merge_sort(a[(a.length + 1) / 2..-1])

  # merge together
  sorted = []
  sorted << (b.first < c.first ? b.shift : c.shift) until b.empty? || c.empty?
  sorted + b + c
end

p merge_sort([4, 3, 2, 1])
p merge_sort([7, 4, 3, 2, 1])
