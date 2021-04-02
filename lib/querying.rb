def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books WHERE books.series_id = 1"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto FROM characters ORDER BY LENGTH(characters.motto) DESC LIMIT 1"
end

def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, COUNT(characters.species) FROM characters GROUP BY characters.species ORDER BY count(characters.species) DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM series LEFT OUTER JOIN authors ON series.author_id = authors.id LEFT OUTER JOIN subgenres ON series.subgenre_id = subgenres.id"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series LEFT OUTER JOIN authors ON series.author_id = authors.id INNER JOIN characters ON characters.author_id = authors.id GROUP BY characters.species ORDER BY COUNT(characters.species = 'human') LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  #"SELECT character.name, COUNT(books) FROM series LEFT OUTER JOIN books on books.series_id = series.id LEFT OUTER JOIN authors on series.author_id = authors.id INNER JOIN characters ON characters.author_id = authors.id GROUP BY characters.name ORDER BY COUNT("
  "SELECT characters.name, COUNT(books.title) FROM character_books LEFT OUTER JOIN books on character_books.book_id = books.id LEFT OUTER JOIN characters on character_books.character_id = characters.id GROUP BY characters.name ORDER BY COUNT(books.id) DESC, characters.name ASC"
end
