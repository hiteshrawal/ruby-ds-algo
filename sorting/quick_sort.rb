class QuickSort

  attr_accessor :list

  def initialize(list)
    @list = list
  end

  def quicksort(left_index, right_index)
    #return if (right_index - left_index <= 0)
    if left_index < right_index
      puts "list[left_index]: #{list[left_index]}"
      puts "list[right_index]: #{list[right_index]}"
      pivot = list[left_index]
      new_index = devide(pivot, left_index, right_index)
      quicksort(left_index, new_index)
      quicksort(new_index+1, right_index)
    end
  end

  def devide(pivot, start_index, end_index)
    left_index = start_index
    right_index = end_index

    puts "pivot: #{pivot}"
    puts "List: #{list}"

    while(true)
      while(list[left_index] < pivot && list[left_index] != pivot)
        left_index += 1
      end

      while(list[right_index] > pivot && list[right_index] != pivot)
        right_index -= 1
      end

      if (left_index < right_index)
        tmp = list[left_index]
        list[left_index] = list[right_index]
        list[right_index] = tmp
      else
        return right_index
      end
    end
    
  end

  def display
    list.join('->')
  end

end

quick = QuickSort.new([5,4,9,3,2,8])
quick.quicksort(0, quick.list.size-1)
puts "Sorted List: #{quick.display}"


