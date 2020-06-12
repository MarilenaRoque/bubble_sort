def bubble_sort(new_array)
  flag = 0
  while flag.zero?
    flag = 1
    new_array.each_with_index do |numb, position|
      next if position == new_array.length - 1
      next unless numb > new_array[position + 1]
      new_array[position] = new_array[position + 1]
      new_array[position + 1] = numb
      flag = 0
    end
  end
  new_array
end

def bubble_sort_by(new_array)
  flag = 0
  while flag.zero?
    flag = 1
    new_array.each_with_index do |numb, position|
      next if position == new_array.length - 1
      test = yield(numb, new_array[position + 1])
      next unless test.positive?
      new_array[position] = new_array[position + 1]
      new_array[position + 1] = numb
      flag = 0
    end
  end
  new_array
end

print bubble_sort([1, 2, 8, 6, 4, 2])

result = bubble_sort_by(%w[marilena mari hello terminal]) do |left, right|
  left.length - right.length
end
print result
