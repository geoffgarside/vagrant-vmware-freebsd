module VagrantPlugins
  module VMwareFreeBSD
    module Cap
      class MountVmwareSharedFolder
        def self.mount_vmware_shared_folder(machine, name, guestpath, options)
          machine.communicate.tap do |comm|
            comm.sudo("rm \"#{guestpath}\"")     if comm.test("test -L \"#{guestpath}\"", :sudo => true)
            comm.sudo("rm -Rf \"#{guestpath}\"") if comm.test("test -d \"#{guestpath}\"", :sudo => true)

            intermediate_dir = File.dirname(guestpath)
            comm.sudo("mkdir -p \"#{intermediate_dir}\"") # mkdir -p doesn't care if it exists already

            unless comm.test("test -d \"/mnt/hgfs/#{name}\"")
              comm.sudo("mkdir -p /mnt/hgfs")
              comm.sudo("mount -t vmhgfs \".host:/\" \"/mnt/hgfs\"")
            end

            comm.sudo("ln -s \"/mnt/hgfs/#{name}\" \"#{guestpath}\"")
          end
        end
      end
    end
  end
end
