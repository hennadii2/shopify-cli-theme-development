# frozen_string_literal: true
module Rails
  class Project < ShopifyCli::ProjectType
    creator 'Ruby on Rails App', 'Rails::Commands::Create'

    register_command('Rails::Commands::Serve', "serve")
    # register_task('Rails::Tasks::RailsTask', 'rails_task')
  end

  # define/autoload project specific Commads
  module Commands
    autoload :Create, Project.project_filepath('commands/create')
    autoload :Serve, Project.project_filepath('commands/serve')
  end

  # define/autoload project specific Tasks
  module Tasks
  end

  # define/autoload project specific Forms
  module Forms
    autoload :Create, Project.project_filepath('forms/create')
  end

  autoload :Ruby, Project.project_filepath('ruby')
  autoload :Gem, Project.project_filepath('gem')
end