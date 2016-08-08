class InsertionSort

  attr_accessor :list

  # 5 3 1 4 2
  def initialize(list)
    @list = list
  end

  def sort
    puts "Current List: #{display}"
    index = 1
    last_index = list.size - 1
    while(index <= last_index)
      key = list[index]
      current_index = index - 1      
      while( current_index >= 0 && key <= list[current_index])
        puts "Shift #{list[current_index]}"
        list[current_index+1] = list[current_index]
        current_index -= 1
      end
      puts "Insert #{key} in place of #{list[current_index+1]}\n"
      list[current_index+1] = key
      index += 1
      puts "Now List is : #{display}"
    end
    puts "Sorted List: #{display}"

  end

  def display
    list.join('->')
  end

end

# Example
insertion = InsertionSort.new([2,19,5,4,3,14,2])
insertion.sort
