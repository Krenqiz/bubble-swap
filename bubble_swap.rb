# frozen_string_literal: true

unsorted_array = [4, 3, 78, 2, 0, 2, 32, 44, 12, 320]

def bubble_sort(array)
  return array if array.length <= 1

  loop do
    swapped = false

    (array.length - 1).times do |index|
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        swapped = true
      end
    end

    break unless swapped
  end
  array
end

p bubble_sort(unsorted_array)
