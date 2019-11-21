require 'pry'

def sort_array_asc(array)
  return array.sort
end

def sort_array_desc(array)
  return array.sort {|left, right| right <=> left}
end

def sort_array_char_count(array)
  return array.sort {|left, right| left.size <=> right.size}
end

def swap_elements(array)
  return array.insert(2, array.delete_at(1))
end

def reverse_array(array)
  return array.reverse
end

def kesha_maker(array)
  kesha_words = Array.new
  array.each do |word|
    word_array = word.split("")
    word_array.delete_at(2)
    word_array.insert(2, "$")
    kesha_words << word_array.join
  end
  return kesha_words
end

def find_a(array)
  return array.select {|word| word.start_with?("a")}
end

def sum_array(array)
  return array.inject {|sum, number| sum + number}
end

def add_s(array)
  array.each_with_index.collect do |word, index|
    if index != 1
      "#{word}s"
    else
      word
    end
  end
end
