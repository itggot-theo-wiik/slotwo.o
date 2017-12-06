class Account

    def initialize
        # @username = 
        # @money = params['']
    end 

    def self.new()
        db = SQLite3::Database.open('db/db.sqlite')
        while true
            puts "Username(Not case sensitive):"
            username = gets.chomp.downcase
            if db.execute('SELECT username FROM users WHERE username IS ?', username).first != nil
                puts "IT ALREADY EXISTS".on_red
            else
                break
            end
        end
        puts "Password(case sensitive):" 
        password = BCrypt::Password.create(gets.chomp)
        db.execute('INSERT INTO users (username, password, money) VALUES (?,?,?)', [username, password, 100])
    end

    def self.login()
        db = SQLite3::Database.open('db/db.sqlite')
        while true
            puts "Username:"
            username = gets
            puts "Password"
            password = gets
            user = db.execute('SELECT * FROM users WHERE username IS ?', username)
            if user[1].first == username
                p "DET ÄR RTÄ"
            else
                p "wrong"
            end
        end
    end
end