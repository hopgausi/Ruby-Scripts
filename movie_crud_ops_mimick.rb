movies = {
  protegy: 2
}
run = true 
while run
puts ""
puts "Type 'add' to add movie"
puts "Type 'update' to update movie"
puts "Type 'display' to display movies"
puts "Type 'delete' to display"
puts "Type 'exit' to cancel the session"
choice = gets.chomp
puts ""
case choice 
  when 'add'
    puts 'Enter the title of the movie you want to add'
    title = gets.chomp
    if title.length > 0
      if movies[title.to_sym].nil?
        puts 'Whats the rating of the movie from 1 to 5?'
        rating = gets.chomp
        if rating.length > 0
          movies[title.to_sym] =rating.to_i
          puts "#{title} has been added with rating of #{rating}"
        else
          rating = 0
          movies[title.to_sym] = rating
          puts "#{title} has been added with rating of #{rating}"
        end
      else
        puts 'Movie #{title} already exist'
      end
    else
      puts 'No movie title entered'
    end
  when 'update'
    puts "Enter movie you want to update"
    title = gets.chomp
    if title.length > 0
      puts "Whats the rating of the movie: #{title}?"
      rating = gets.chomp
      if rating.length > 0 
        movies[title.to_sym] = rating
        puts "#{title} update with new rating of #{rating}"
      else
        puts "No new rating entered"
      end
    else
      puts "No movie entered"
    end
  when 'display'
    movies.each do |movie, rating|
      puts "#{movie}:#{rating}"
    end
  when 'delete'
    puts "Enter title of movie to delete"
    title = gets.chomp
    if title.length > 0
      movies.delete(title.to_sym)
      puts "#{title} deleted successfully"
    else
      puts "No title entered to delete"
    end
  when 'exit'
    run = false
  else
    puts 'Error'
end
end
