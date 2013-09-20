module CarpetBomb
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)
      desc "Creates CarpetBomb Initializer for your application"

      def copy_initializer_file
        copy_file "carpetbomb_initializer.rb", "config/initializers/carpetbomb.rb"

        puts "Install complete!, check config/initializers/carpertbomb.rb"
      end
    end
  end
end
