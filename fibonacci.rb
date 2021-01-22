def fibs(n)
  result = []
  i = 0
  while i <= n
    if i == 0 || i == 1
      result.push(i)
    else
      result.push(result[i - 1] + result[i - 2])
    end

    i += 1
  end
  result.sort.join(', ')
end

puts fibs(12)
