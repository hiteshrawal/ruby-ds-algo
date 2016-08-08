class BubbleSort

  attr_accessor :list

  # 5 3 1 4 2
  def initialize(list)
    @list = list
  end

  def sort
    puts "Current list: #{display}"
    index = 0
    current_index = 0
    last_index = list.size - 1
    while(index <= last_index)
      while(current_index < last_index)
        if( list[current_index] > list[current_index+1] )
          swape_with_next(current_index)
        else
          puts "No Swap"
        end
        current_index += 1
      end
      index += 1
      current_index = 0
      puts "Now List is: #{display}"
    end
    puts "Sorted List: #{display}"
  end

  def display
    list.join('->')
  end

  def swape_with_next(idx)
    puts "Swapping #{list[idx]} <=> #{list[idx+1]}"
    temp          = list[idx]
    list[idx]     = list[idx+1]
    list[idx+1]   = temp
  end

end

# Example 
bubble = BubbleSort.new([5,3,1,4,2])
bubble.sort
