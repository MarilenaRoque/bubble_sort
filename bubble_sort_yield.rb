


def bubble_sort(new_array)
  flag = 0
  while flag == 0 do
    flag = 1 
    (new_array.length-1).times do |index|
        test = yield(new_array[index], new_array[index+1])
        if test > 0 
            temp = new_array[index]
            new_array[index] = new_array[index+1] 
            new_array[index+1] = temp
            flag=0    
        end
    end
  end
  puts new_array
end

bubble_sort(["hi","abdulazi","oijojsoiejfojsf","hello","hey","h"]) do |left, right|
    left.length - right.length
end