new_array = [ 1 , 6 , 9 , 5 , 8 , 2 ]


def bubble_sort(new_array)
  flag = 0
  while flag == 0 do
    flag = 1 
    new_array.each_with_index do |numb, position|
      puts "I am here"
      unless position == new_array.length-1
        if numb > new_array[position+1]
          new_array[position]=new_array[position+1] 
          new_array[position+1]=numb
          flag=0
        end
      end
      puts new_array
    end
  end
end

bubble_sort(new_array)
puts new_array.class