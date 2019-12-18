def join_ingredients(src)
  row_index = 0
  aos = []
  while row_index < src.count do 
    element_index_1 = 0
    element_index_2 = 1
    while element_index_1 < src[row_index].count do 
      aos.push("I love " + src[row_index][element_index_1] + " and " + src[row_index][element_index_2] + " on my pizza")
      element_index_1 += 2
      element_index_2 += 2 
    end
    row_index += 1 
  end
  return aos
end

def find_greater_pair(src)
larger_values = []
row_index = 0
  while row_index < src.count do
    larger_values << src[row_index].sort[1]
    row_index += 1 
  end
  return larger_values
end


def total_even_pairs(src)
even_nums_sums = 0
row_index = 0
  while row_index < src.count do
    element_index = 0 
    while element_index < src[row_index].count do
      if src[row_index][element_index] % 2 == 0
        num_to_add = src[row_index][element_index]
        element_index += 1
        if src[row_index][element_index] % 2 == 0
          num_to_add += src[row_index][element_index]
          even_nums_sums += num_to_add
        end
      end
      element_index += 1 
    end
    row_index += 1 
  end
  return even_nums_sums
end
    

  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!

