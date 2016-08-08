class BinarySearch

  attr_accessor :list

  def initialize(list)
    @list = list
  end

  def search(target)
    low = 0
    high = list.size-1
    puts list.join('->')
    index = binarysearch(target, low, high)
    if index < 0
      puts "Item not found"
    else
      puts "#{target} Found at #{index}"
    end
  end

  def binarysearch(target, low, high)
    return -1 if low > high
    middle = low+(high-low)/2
    value = list[middle]
    puts "Middle: #{middle}"

    if(value < target)
      binarysearch(target, middle, high)
    end

    if(value > target)
      binarysearch(target, low, middle)
    end

    return middle
  end

end

# Example

binary = BinarySearch.new([2,3,5,6,8,9])
binary.search(8)
