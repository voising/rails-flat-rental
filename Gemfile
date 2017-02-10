source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
ruby '2.3.1'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'rails', '~> 5.0.1'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
# gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

# Use Capistrano for deployment

# BOOKING
gem 'acts_as_bookable'

# PICTURES
gem 'carrierwave', '>= 1.0.0.beta', '< 2.0'
gem 'mini_magick'

# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'administrate'
gem 'bourbon'
gem 'devise'
gem 'devise-i18n'
gem 'mysql2', '~> 0.3.18'
gem 'simple_form'
gem 'slim-rails'

group :development do
  gem 'meta_request'
  gem 'awesome_print'
  gem 'better_errors'
  gem 'capistrano', '~> 3.0.1'
  gem 'capistrano-bundler'
  gem 'capistrano-rails', '~> 1.1.0'
  gem 'capistrano-rails-console'
  gem 'capistrano-sidekiq'
  # gem 'capistrano-rbenv', '~> 2.0'
  gem 'foreman'
  gem 'haml2slim'
  gem 'html2haml'
  gem 'rails_apps_pages'
  gem 'rails_layout'
end

group :development, :test do
  gem 'pry-rails'
  gem 'pry-rescue'
  gem 'rubocop'
  gem 'thin'
end

gem 'minitest-rails'
gem 'minitest-reporters'

group :test do
  gem 'faker'
end

group :production do
  gem 'unicorn'
end

# ASSETS

gem 'angular-rails-templates'
gem 'angular_rails_csrf'
source 'https://rails-assets.org' do
  gem 'rails-assets-angular'
  gem 'rails-assets-angular-animate'
  gem 'rails-assets-angular-aria'
  gem 'rails-assets-angular-cookies'
  gem 'rails-assets-angular-devise'
  gem 'rails-assets-angular-dragdrop'
  gem 'rails-assets-angular-fontawesome'
  gem 'rails-assets-angular-material'
  gem 'rails-assets-angular-resource'
  gem 'rails-assets-angular-route'
  gem 'rails-assets-angular-selectize2'
  gem 'rails-assets-angular-simple-logger'
  gem 'rails-assets-components-font-awesome'
  gem 'rails-assets-lf-ng-md-file-input'
  gem 'rails-assets-lodash'
  gem 'rails-assets-moment', '2.15.0'

  # https://angular-translate.github.io/docs/#/guide
  gem 'rails-assets-angular-translate'

  # https://angular-ui.github.io/angular-google-maps/#!/
  # gem 'rails-assets-angular-google-maps', '>= 2.3.2'

  gem 'rails-assets-ngmap'
  gem 'rails-assets-ng-image-gallery'

  gem 'rails-assets-angular-ui-notification'

  gem 'rails-assets-angular-bootstrap-fileinput'
  gem 'rails-assets-bootstrap-fileinput'
end
