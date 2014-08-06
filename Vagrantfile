Vagrant.configure("2") do |config|

  #
  # 'App' instance.
  #

  config.vm.define "app" do |v|
    v.vm.provider "docker" do |d|
      d.build_dir = "./"
      d.cmd = ["ls", "./"]
      d.remains_running = false
      d.ports = ["80:80"]
      d.ports = ["443:443"]
    end
  end
end
