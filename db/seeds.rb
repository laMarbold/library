# frozen_string_literal: true

require 'faker'

Book.create!(title: "Harry Potter and the Philosopher’s Stone", author: "J.K. Rowling", release_year: 1997,
             description: "It is a story about Harry Potter, an orphan brought up by his aunt and uncle because his parents were killed when he was a baby.",
             status: 0)
Book.create!(title: "The Lion, the Witch, and the Wardrobe", author: "C.S. Lewis", release_year: 1950,
             description: "Four kids travel through a wardrobe to the land of Narnia and learn of their destiny to free it with the guidance of a mystical lion.", status: 0)

Book.first.cover.attach(io: File.open(Rails.root.join("app/assets/images/1.png")),
                        filename: "1.png", content_type: "image/png")
Book.second.cover.attach(io: File.open(Rails.root.join("app/assets/images/2.png")),
                         filename: "2.png", content_type: "image/png")

Movie.create!(title: "The Lord of the Rings: The Fellowship of the Ring", director: "Peter Jackson", duration:"2h 58min",
              release_year: 2001, status: 0, description: "Set in Middle-earth, the story tells of the Dark Lord Sauron, who seeks the One Ring, which contains part of his might, to return to power.")
Movie.create!(title: "Star Wars: Episode III – Revenge of the Sith", director: "George Lucas", duration:"2h 20min",
              release_year: 2005, status: 0, description: "Three years into the Clone Wars, Obi-Wan pursues a new threat, while Anakin is lured by Chancellor Palpatine into a sinister plot to rule the galaxy")

Movie.first.cover.attach(io: File.open(Rails.root.join("app/assets/images/3.png")),
                         filename: "3.png", content_type: "image/png")
Movie.second.cover.attach(io: File.open(Rails.root.join("app/assets/images/4.png")),
                          filename: "4.png", content_type: "image/png")

Category.create!(name: "Science-Fiction")
Category.create!(name: "Adventure")
Category.create(name: "Fantasy")

Association::BookCategory.create!(book_id: 1, category_id: 3)
Association::BookCategory.create!(book_id: 2, category_id: 3)
Association::MovieCategory.create!(movie_id: 1, category_id: 3)
Association::MovieCategory.create!(movie_id: 2, category_id: 1)

Review.create!(reviewed_for_type: "Book", reviewed_for_id: 1, rating: 4, description: "test")