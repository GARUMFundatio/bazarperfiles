#lib/authr/engine.rb
require "bazarperfiles"
require "rails"
require 'action_controller'
require 'application_helper'


module Bazarperfiles
  class Engine < Rails::Engine
   puts "Bazarperfiles:: inicializo el engine 2 <---------------------------"
    # Configuracion por defecto 
    
    config.bazarperfiles_factory_name = "Bazarperfiles"
    config.montar_en = '/'
    
    # Ejecuto los task que tengamos
    rake_tasks do
      load File.join(File.dirname(__FILE__), 'rails/railties/tasks.rake')
    end
    
    # Check the gem config
    initializer "check config" do |app|

      
      # make sure mount_at ends with trailing slash
      config.montar_en += '/'  unless config.montar_en.last == '/'
    end
    
    initializer "static assets" do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/public"
    end 
  
  end
end
