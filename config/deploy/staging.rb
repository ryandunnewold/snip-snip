set :branch, 'develop'
set :stage, :staging
set :rails_env, :staging

autoscale '<AUTOSCALE_GROUP_NAME>', user: 'apps', roles: [:app, :web, :db]
