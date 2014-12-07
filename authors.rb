class Authors

  def initialize
    @authors = list_of_authors
  end

  def list_of_authors
    @authors = []
    book_info = Book.new(author, title, file)
    author = book_info[0]
    @authors << author
    @authors.uniq!
  end
end
