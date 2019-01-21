#write your code here
def echo(str)
  return str
end

def shout(str)
  return str.upcase
end

def repeat(str, n = 2)
  return "#{str} " * (n - 1) + "#{str}"
end

def start_of_word(str, n)
  return str[0, n]
end

def first_word(str)
  return str.split(' ')[0]
end

def titleize(str)
  arr = str.split(" ")
  arr.map! do |word|
    if(word != 'and' && word != 'over' && word != 'the')
      word.capitalize 
    else
      word
    end
  end
  arr[0].capitalize!
  return arr.join(" ")
end