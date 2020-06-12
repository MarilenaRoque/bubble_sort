def bubble_sort(new_array)
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
end

new_array = [1, 2, 5, 8, 1, 8, 8]
bubble_sort(new_array) do |left, right|
  left - right
end
puts new_array

new_array = %w[hi hello hey]
bubble_sort_by(new_array) do |left, right|
  left.length - right.length
end
puts new_array
