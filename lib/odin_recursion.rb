# frozen_string_literal: true

# returns array of fibonacci nums
def fibonacci(num)
  return [1] if num == 1
  return [1, 1] if num == 2

  vals = [1, 1]
  fib = lambda do |number|
    return vals[number] if number < vals.length

    vals.push(fib.call(number - 1) + fib.call(number - 2))
    vals[-1]
  end

  fib.call(num - 1)
  vals
end

p fibonacci(15)

def merge_sort(arr)
  return arr if arr.length < 2

  join(merge_sort(arr[0...arr.length / 2]), merge_sort(arr[(arr.length / 2)..]))
end

def join(arr1, arr2)
  result = []
  until arr1.empty? || arr2.empty?
    if arr1[0] > arr2[0]
      result << arr2[0]
      arr2.shift
    else
      result << arr1[0]
      arr1.shift
    end
  end
  result.concat(arr1) if arr2.empty?
  result.concat(arr2) if arr1.empty?
  result
end

p merge_sort([1, 4, 5, 3, 4, 4, 6, 8, 5, 3, 5, 78, 9, 7, 5, 3, 2, 3, 4])
