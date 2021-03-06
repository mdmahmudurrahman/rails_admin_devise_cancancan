RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :employee
  end
  config.current_user_method(&:current_employee)

  RailsAdmin.config do |config|
    config.authorize_with do
      redirect_to main_app.root_path unless current_employee.role === Employee.roles.keys[1]
    end
  end

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  # Include the models in the navigation
  config.included_models = ["Project", "Company", "Department"]
  # config.excluded_models = ["Employee"]
  #
  # config.model "Employee" do
  #   visible false
  # end

  config.actions do
    # root actions
    dashboard                     # mandatory
    # collection actions
    index                         # mandatory
    new
    export do
      only ["Company", "Department"]
    end
    bulk_delete
    # member actions
    show
    edit do
      only ["Company", "Department"]
    end
    delete do
      only ["Company", "Department"]
    end
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  # Provide application name
  config.main_app_name = ["Experiment With Rails Admin", ""]
end
