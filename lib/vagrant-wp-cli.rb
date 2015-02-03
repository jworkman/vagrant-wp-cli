class WpCLIPlugin < Vagrant.plugin 2
  name "WpCLI"

  command "wp" do
    require_relative "vagrant-wp-cli/command"
    WpCLI
  end
end