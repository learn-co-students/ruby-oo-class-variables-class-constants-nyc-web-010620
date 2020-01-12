class Book
  attr_accessor :author, :page_count
  attr_reader :title, :genre 

  GENRES = []

  def initialize(title)
    @title = title
  end

  def turn_page
    puts "Flipping the page...wow, you read fast!"
  end

  # Something else needs to happen in our genre= method. We need to somehow update our GENRES constant in that method. Remember, 
  # our genre= method (along with our genre method) is created by the following line of code: attr_accessor :genre. Since we want to add some 
  # customization to the method, we'll have to do three things:

  #   Explicitly define the genre= method, to integrate our class constant into the method
  #   Remove the attr_accessor for :genre since we no longer need to generate a reader AND a writer.
  #   Add an attr_reader for :genre, since we still want Ruby to generate a reader for us.
  def genre=(genre)
    @genre = genre 
    GENRES << genre 
  end 

end