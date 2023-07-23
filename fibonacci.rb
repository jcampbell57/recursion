# non recursive
def fibs(n)
  a = [0, 1]
  if n <= 0
    puts 'please input a positive number'
  elsif n == 1
    a = [0]
  else
    a << a[-1] + a[-2] while a.length <= n - 1 && n - 1 > 2
  end
  a
end
p fibs(8) # [0, 1, 1, 2, 3, 5, 8, 13]

# recursive
def fibs_rec(n)
  if n == 0
    [1]
  elsif n == 1
    [0]
  else
    fibs_rec(n - 1) << (fibs_rec(n - 1)[-1] + fibs_rec(n - 2)[-1])
  end
end
p fibs_rec(8) # [0, 1, 1, 2, 3, 5, 8, 13]
