user_db = [
    {username: "hopgausi", password: "blackwidow"},
    {username: "smigo", password: "1234"}
]

puts "Welcome to authenticator progam!"
35.times do 
    print "-"
end
puts "\n This program return user object if password and users match"
run_counter = 3
exit = false
while run_counter > 0
    print "Username: "
    username = gets.chomp
    print "Password: "
    password = gets.chomp    

    user_db.each do |user|
        if user[:username] == username && user[:password] == password
            puts user
            exit = true
        end
    end
    if exit
        break
    end
    if run_counter > 1
        puts "Incorrect creditials, press q to quit or any other key to continue"
        choice = gets.chomp
            if choice == "q"
                break
            else 
                run_counter -= 1
            end
    else
        run_counter -= 1
        puts "Max trials reached. programm exited!" 
    end
end