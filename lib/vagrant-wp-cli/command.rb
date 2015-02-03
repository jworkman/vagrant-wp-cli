require 'shellwords'

class WpCLI < Vagrant.plugin 2, :command
    def execute
        command = "wp #{@argv.join(' ')}"
        puts "Running: #{command}"
        ssh "cd /var/www && #{command}"
    end

    def ssh command
        puts `vagrant ssh -c #{command.shellescape}`
    end
end