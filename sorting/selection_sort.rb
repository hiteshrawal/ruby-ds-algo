class SelectionSort

  attr_accessor :list

  def initialize(list)
    @list = list
  end

  def sort
    index = 0
    min = 0

    puts "Current List: #{display}"
    while(index < list.size-1)
    current_index = index+1
    min = index
      while(current_index < list.size)
        if list[current_index] < list[min]
          min = current_index
        end
        current_index += 1
      end
      puts "#{list[min]} is Min, Swap #{list[index]} <-> #{list[min]}"
      temp = list[index]
      list[index] = list[min]
      list[min] = temp
      index += 1
      puts "Now List is #{display}"
    end
    puts "Sorted list: #{display}"
  end

  def display
    list.join('->')
  end

end

# Example
selection = SelectionSort.new([5,3,1,4,2])
selection.sort

