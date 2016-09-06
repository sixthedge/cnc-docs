Rails.application.routes.draw do
  ## root
  root 'versions#index'
  ## site/v0.1.0/foo/bar
  get '/*version_id/:section_id/:document_id', to: 'documents#show'
  ## site/v0.1.0/foo --> site/v0.1.0
  get '/*version_id/:section_id',              to: redirect('/%{version_id}')
  ## site/v0.1.0
  get '/*version_id',                          to: 'versions#show', format: false
end
