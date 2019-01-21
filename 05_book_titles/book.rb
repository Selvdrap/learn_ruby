class Book
  # write your code here
  attr_reader :title

  @@exceptions = %w(the and over a an in of)

  def initialize(title = "")
    arr = title.split(" ").map! do |word|
      if (@@exceptions.include?(word))
        word
      else
        word.capitalize
      end
    end

    arr[0] = arr[0].capitalize if arr[0]
    @title = arr.join(" ")
  end

  def title=(title)
    arr = title.split(" ").map! do |word|
      if (@@exceptions.include?(word))
        word
      else
        word.capitalize
      end
    end

    arr[0] = arr[0].capitalize if arr[0]
    @title = arr.join(" ")
  end
end
