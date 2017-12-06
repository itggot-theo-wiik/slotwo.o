require_relative 'slotmachine.rb'
require_relative 'tile.rb'
require_relative 'intro.rb'
require_relative 'account.rb'
require 'colorize'
require 'IO/console'
require 'artii'
require 'bcrypt'
require 'sqlite3'

def ascii(text, color, cursive)
    if cursive
        a = Artii::Base.new :font => 'slant'
    else
        a = Artii::Base.new
    end
    # print eval('a.asciify(#{text}).#{color}')
    puts a.asciify(text).on_green
end

def clear()
    system('cls')
end

def main()
    intro(0.5)

    while true
        puts "1) Log in"
        puts "2) Create a new account"
        input = gets.to_i
        if input == 1
            Account.login
            break
        elsif input == 2
            Account.new
            clear
        else
            puts "Not a valid input"
        end
    end

    clear
    ascii('Select slotmachine', "on_red", true)
    ascii('1 ) FARM FORTUNE', "on_green", false)
    ascii('2 ) GROW', "on_green", false)

    while true
        input = gets.to_i

        if input == 1
            break
        elsif input == 2
            break
        else
            puts "Not a valid input"
        end
    end

    farm_fortune = Slotmachine.new(4,5 )

    Tile.putser(farm_fortune)
    p "-------------------------------"
    Tile.check_winning(farm_fortune)

end

main