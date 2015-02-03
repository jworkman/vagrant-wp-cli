class WpCLIPlugin < Vagrant.plugin 2
  name "WpCLI"

  command "wp" do
    require_relative "command"
    WpCLI
  end
end