def merge_sort(array)
  return array if array.size < 2

  left_half = merge_sort(array[0, array.size / 2])
  right_half = merge_sort(array[array.size / 2, array.size])
  sorted_array = []

  until right_half.empty? && left_half.empty? do
    if right_half.empty?
      sorted_array << left_half.shift
    elsif left_half.empty?
      sorted_array << right_half.shift
    elsif right_half.first > left_half.first
      sorted_array << left_half.shift
    else
      sorted_array << right_half.shift
    end
  end

  return sorted_array
end

unsorted = []
rand(20).times do
  unsorted << rand(1000)
end
puts "Unsorted: #{unsorted}"
puts "Merge Sorted: #{merge_sort(unsorted)}"
