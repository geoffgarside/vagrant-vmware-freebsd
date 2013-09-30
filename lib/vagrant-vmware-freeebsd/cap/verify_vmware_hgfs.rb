module VagrantPlugins
  module VMwareFreeBSD
    module Cap
      class VerifyVmwareHgfs
        def self.verify_vmware_hgfs(machine)
          machine.communicate.test("kldstat -q -m vmhgfs")
        end
      end
    end
  end
end
