def intro(sleep)
    clear
    logo = <<-'LOGO'
    title text here
    LOGO
    puts logo.cyan

    ready_fds = select [ $stdin ], [], [], sleep
    input = ready_fds.first.first.gets.chomp unless ready_fds.nil?
end