class MergeSort

  # attr_accessor :list

  def initialize
    # @list = []
  end

  def mergesort(inputlist)
    puts "inputlist: #{inputlist}"
    listsize = inputlist.size
    return inputlist if listsize == 1
    
    q = listsize/2
    l1 = mergesort(inputlist[0..q-1])
    l2 = mergesort(inputlist[q..listsize])

    merge(l1,l2)
  end

  def merge(l1, l2)
    list = []
    puts "Merge #{l1} + #{l2}"
    idx1 = 0
    idx2 = 0
    index = 0
    size1 = l1.size-1
    size2 = l2.size-1

    while((idx1 <= size1) && (idx2 <= size2))
      if(l2[idx2] < l1[idx1])
        list[index] = l2[idx2]
        idx2 += 1
      else
        list[index] = l1[idx1]
        idx1 += 1
      end
      index += 1
    end

    while(idx1 <= size1)
      list[index] = l1[idx1]
      idx1 += 1
      index += 1
    end

    while(idx2 <= size2)
      list[index] = l2[idx2]
      idx2 += 1
      index += 1
    end

    puts "Sorted Merged List: #{list}"
    list
  end

end

merge = MergeSort.new
merge.mergesort([5,4,3,2,1])
