require 'pry'

sentence = "Me encanta la programacion."
PERIOD = '.'
COMMA = ','


def split_array(sentence)

  sentence_array = sentence.split(" ")
  splited_array = []
  
  for word in sentence_array

    if (word.include?(PERIOD))
      word = word.delete(PERIOD)
    end

    if (word.include?(COMMA))
      word = word.delete(COMMA)
    end

    splited_array << word

  end

  modified_array = splited_array.dup
  return splited_array, modified_array

end

def sort_ignore_case(splited_array, modified_array)

  sorted_array = []
  for item in modified_array
    modified_array[modified_array.index(item)] = item.downcase
  end

  modified_array = modified_array.sort

  for word in splited_array 
    for item in modified_array
      if word.downcase == item
        sorted_array[modified_array.index(item)] = word
      end
    end
  end

  sorted_array
end

splited_array = split_array(sentence)[0]
modified_array = split_array(sentence)[1]
puts sort_ignore_case(splited_array, modified_array)