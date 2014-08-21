class Book

def title
  @title
end

  def title=(input)
    new_title=[]
    words = input.split(' ')
    words[0].capitalize!
    words.each do |word|
      unless ['a','an','and','in','the','of'].include? word
        word.capitalize!
      end
      new_title << word
    end

    @title = new_title.join(' ')
  end

end