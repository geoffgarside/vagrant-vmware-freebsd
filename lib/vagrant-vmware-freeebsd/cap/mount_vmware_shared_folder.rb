module VagrantPlugins
  module VMwareFreeBSD
    module Cap
      class MountVmwareSharedFolder
        def self.mount_vmware_shared_folder(machine, name, guestpath, options)
          puts "MountVmwareSharedFolder: #{name}, #{guestpath}, #{options.inspect}"
          machine.communicate.tap do |comm|
            comm.sudo("rm \"#{guestpath}\"")     if comm.test("test -L \"#{guestpath}\"", :sudo => true)
            comm.sudo("rm -Rf \"#{guestpath}\"") if comm.test("test -d \"#{guestpath}\"", :sudo => true)
            comm.sudo("mkdir -p \"#{guestpath}\"") # mkdir -p doesn't care if it exists already

            comm.sudo("mount -t vmhgfs \".host:/#{name}\" \"#{guestpath}\"")
          end
        end
      end
    end
  end
end
