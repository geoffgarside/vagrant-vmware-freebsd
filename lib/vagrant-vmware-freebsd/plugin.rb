require "vagrant"

module VagrantPlugins
  module VmwareFreebsd
    class Plugin < Vagrant.plugin(2)
      name "VMware FreeBSD"
      description "VMware capabilities for FreeBSD."
      
      guest_capability("freebsd", "mount_vmware_shared_folder") do
        require_relative "cap/mount_vmware_shared_folder"
        Cap::MountVmwareSharedFolder
      end

      guest_capability("freebsd", "verify_vmware_hgfs") do
        require_relative "cap/mount_vmware_shared_folder"
        Cap::MountVmwareSharedFolder
      end
    end
  end
end
