class BubbleSort
  def sort(group)
    group.length.times do
      group.each_index do |i|
        current_value = group[i]
        next_value = group[i + 1]
        if next_value != nil && current_value > next_value
          group[i] = next_value
          group[i + 1] = current_value
        end
      end
    end
    puts group.inspect
  end
end

sorter = BubbleSort.new
sorter.sort(['d', 'b', 'a', 'c'])
sorter.sort([3, 4, 2, 4, 9, 3, 0, 2, 5, 4, 3, 7])

class InsertionSort
  def sort(unsorted)
    sorted = []
    unsorted.each do |unsorted_el|
      insert_index = insertion_index(sorted, unsorted_el)
      insert_at(sorted, insert_index, unsorted_el)
    end
    puts sorted.inspect
  end

  def insertion_index(sorted, unsorted_el)
    insert_index = nil
    insert_index = 0 if sorted.empty?
    sorted.each_with_index do |sorted_el, i|
      if unsorted_el <= sorted_el
        insert_index = i
        break
      elsif i == sorted.length - 1
        insert_index = i + 1
      end
    end
    insert_index
  end

  def insert_at(sorted, insert_index, unsorted_el)
    sorted.insert(insert_index, unsorted_el)
  end
end

sorter = InsertionSort.new
sorter.sort(['d', 'b', 'a', 'c'])
sorter.sort([3, 4, 2, 4, 9, 3, 0, 2, 5, 4, 3, 7])


class MergeSort
  def sort(group)
    return group if group.length <= 1

    left_half = split_left(group)
    right_half = split_right(group)

    sort_left = sort(left_half)
    sort_right = sort(right_half)

    merge(sort_right, sort_left)
  end

  def split_left(group)
    group[0..(group.length/2) - 1]
  end

  def split_right(group)
    group[(group.length/2)..-1]
  end

  def merge(group_1, group_2)
    merged_group = []
    i1 = 0
    i2 = 0

    group_1, group_2 = group_2, group_1 if group_1.length < group_2.length

    length_1 = group_1.length
    length_2 = group_2.length

    until i1 == length_1 || i2 == length_2
      if group_1[i1] <= group_2[i2]
        merged_group << group_1[i1]
        i1 += 1
      else
        merged_group << group_2[i2]
        i2 += 1
      end
    end

    if i1 == length_1
      merged_group += group_2[i2..-1]
    end

    if i2 == length_2
      merged_group += group_1[i1..-1]
    end

    merged_group
  end
end

sorter = MergeSort.new
puts sorter.sort(['d', 'b', 'a', 'c']).inspect
puts sorter.sort(['f', 'i', 'a', 'n', 'e', 'o', 'j', 'd','s']).inspect
puts sorter.sort([3, 4, 2, 4, 9, 3, 0, 2, 5, 4, 3, 7]).inspect
