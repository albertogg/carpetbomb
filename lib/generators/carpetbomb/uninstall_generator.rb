module Carpetbomb
  module Generators
    class UninstallGenerator < Rails::Generators::Base

      def uninstall_initializer
        remove_file "config/initializers/carpetbomb.rb"

        puts "Uninstall complete!"
      end
    end
  end
end
