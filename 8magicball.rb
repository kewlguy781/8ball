##################################
#     8 Magic Ball Stuff 

# Setting up 8 ball Stuff

def set_up
@magicballs = ["Screw you!",
            "Why are you asking me?!",
            "As I see it, yes.",
            "Ask again later.",
            "Better not tell you now.",
            "Cannot predict now.",
            "Concentrate and ask again.",
            "Don’t count on it.",
            "It is certain.",
            "It is decidedly so.",
            "Most likely.",
            "My reply is no.",
            "My sources say no.",
            "Outlook not so good.",
            "Outlook good.",
            "Reply hazy, try again.",
            "Signs point to yes.",
            "Very doubtful.",
            "Without a doubt.",
            "Yes.",
            "Yes – definitely.",
            "You may rely on it.",]
# p @magicballs
end

def ask_question

    puts "Welcome to the 8 balls"
    puts "Please ask your question to the 8 ball"
    @question=gets.chomp
    #puts @question
end

# User inputs "QUIT"
# may need to do what if else

def check_question
    #puts "checking the question for triggers"
    #puts @question
    if @question == "QUIT" 
   puts "Gently putting away the 8 ball. Till next time!"
        exit
    elsif @question == "egg"  
        easter_egg
    elsif @question == "add_answer"
        add_answer
    elsif @question == "reset_answers"
        reset_answers
    elsif @question == "print_answers"
        print_answers
    else
        random_answer
    end
    ask_question
    check_question
end

def easter_egg
    puts "Happy Easter!"  
    easter_egg_menu
    
    user_selection = gets.chomp

    case user_selection
        when '1'
        print_answers
        when '2'
        add_answer
        when '3'
        reset_answers
        when '4' 
        random_answer
        when '5'
        return
        when '6'
            exit
        else    
        puts "error, input not recongized, try again"
        end
    easter_egg
    
end

def easter_egg_menu
    #print the menu
    puts "[ 1 ] List all the answer in the ball"
    puts "[ 2 ] Add an answer to the ball"
    puts "[ 3 ] Reset the ball"
    puts "[ 4 ] Run the random answer selector"
    puts "[ 5 ] Exit the Easter Menu"
    puts "[ 6 ] Exit the application"
    puts "   Please select a number to perform"
end


# add_answer function goes here
def add_answer
    puts "Enter the new answer to be added to the ball"
    #insert the new answer to the array
    new_answer = gets.chomp
    if @magicballs.include?(new_answer)
        puts "Answer already exist in the ball"
    else
        @magicballs << new_answer
        puts "'#{new_answer}' has been added"            
    end
        
    #p @magicballs
end


#reset_answers function goes here
def reset_answers
    puts "Resetting the answer here."
    set_up
end

#print_answers function goes here
def print_answers
    puts "Here is all the answer inside the ball"
    # do the "do" loop here
    @magicballs.each_with_index do |answers, index|
        puts "[ #{index + 1} ] #{answers}"
    end
end

def random_answer
    puts "shaking the ball, and it says...."
    answer=@magicballs[rand(@magicballs.count)]
    puts answer
    puts "Press enter to continue"
    gets
end

# add_answer function goes below
# Do not let them add the same answer if the eight ball already has that answer
# Compare, need to look up if "compare if" to do this. ex. if exist, return, other, add


# Use classes to handle the Eight Ball Program and Answers.

#time to roll the ball!
system("clear")
puts "Starting up application"
set_up
ask_question
check_question