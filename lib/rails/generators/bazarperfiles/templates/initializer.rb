module Bazarperfiles
  class Engine < Rails::Engine

    config.montar_en = '/bazarperfiles'
    config.bazarperfiles_factory_name = 'Bazarperfiles'
    puts "bazarperfiles:: inicializo el engine <---------------------"
    
    ActiveSupport::Inflector.inflections do |inflect|
      puts "inflectors de la gema bazarperfiles"
      inflect.irregular 'perfil', 'perfiles'

    end
     
  end
end