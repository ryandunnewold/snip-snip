set :branch, 'master'
set :stage, :production
set :rails_env, :production

autoscale '<AUTOSCALE_GROUP_NAME>', user: 'apps', roles: [:app, :web, :db]
