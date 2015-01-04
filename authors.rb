class Authors

  def initialize
    @authors = []
  end

  def self.add_author(author)
    @authors << author
    @authors.uniq!
  end

  def self.all
    @authors
  end
  
end
