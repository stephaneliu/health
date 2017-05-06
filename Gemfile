source 'https://rubygems.org'
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
ruby '2.4.1'
gem 'rails', '~> 5.0.2'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
group :development, :test do
  gem 'byebug', platform: :mri
end
group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'bootstrap', '~> 4.0.0.alpha3.1'
gem 'devise'
gem 'haml-rails'
gem 'mysql2', '~> 0.3.18'
gem 'thin'
group :development do
  gem 'better_errors'
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'html2haml'
  gem 'hub', :require=>nil
  gem 'rails_layout'
  gem 'rb-fchange', :require=>false
  gem 'rb-fsevent', :require=>false
  gem 'rb-inotify', :require=>false
  gem 'spring-commands-rspec'
end
group :development, :test do
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'rspec-rails'
  gem 'rubocop'
end
group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'selenium-webdriver'
end

## copy

source 'https://rubygems.org'

gem 'rails', '4.2.7.1'

gem 'aasm', '~>4.11.1'
gem 'activerecord-session_store', '~>1.0.0'
gem 'acts-as-taggable-on', '~>3.5.0'
gem 'acts_as_list', "~>0.7.7"
gem 'addressable', '~>2.4.0'
gem 'awesome_nested_set', '~>3.0.3'
gem 'bootbox-rails', '~>0.5.0'
gem 'bootstrap-sass', '~>3.3.7'
gem 'bootstrap-will_paginate', '~>0.0.10'
gem 'bootstrap-x-editable-rails', '~>1.5.1.1'
gem 'cancancan', '~>1.12.0'
gem 'coffee-rails', '~>4.2.1'
gem 'deep_cloning', '~>2.0.0'
gem 'delayed_job_active_record', '~>4.1.1'
gem 'devise', '~>4.2.0'
gem 'devise_cas_authenticatable', '~>1.9.2' # review devise_cas_authenticatable_patch before upgrading
gem 'draper', '~>1.4.0'
gem 'dynamic_form', '~>1.1.4'
gem 'enumerize', '~>1.1.1'
gem 'exception_notification', '~>4.2.1'
gem 'faraday', '~>0.9.2'
gem 'fastercsv', '~>1.5.5'
gem 'figaro', '~>1.1.1'
gem 'font-awesome-sass', '~>4.6.2'
gem 'girl_friday', '~>0.11.2' # Currently deprecated - should use sucker_punch
gem 'haml-rails', '~>0.9.0'
gem 'holidays', '~>2.2.0', require: false
gem 'jquery-migrate-rails', '~>1.2.1'
gem 'jquery-rails', '~>4.2.1'
gem 'jquery-ui-rails', '~>5.0.5'
gem 'log4r', '~>1.1.10'
gem 'rails-observers', '~>0.1.2'
gem 'rails-settings-cached', '0.4.1'
gem 'rails_admin', '~>0.8.1'
gem 'rails_config', '~>0.4.2'
gem 'rdoc', '~>4.2.2'
gem 'reform', '~>2.2.1'
gem 'reform-rails', '~>0.1.2'
gem 'sass-rails',  '~>5.0.6'
gem 'seed-fu', '~>2.3.5'
gem 'seedbank', '~>0.3.0'
gem 'simple_form', '~>3.3.1'
gem 'twitter-typeahead-rails', '~>0.11.1'
gem 'tzinfo-data', '~>1.2016.5' # See README
gem 'uuidtools', '~>2.0.0'
gem 'uglifier', "~> 2.7.0"
gem 'virtus', '~>1.0.5'
gem 'will_paginate', '~>3.1.5'

gem 'rubycas-client', '2.2.1', git: 'https://github.com/stephaneliu/rubycas-client.git', branch: :enterprisey # See README
gem 'user_monitor', git: 'https://github.com/stephaneliu/user_monitor.git'

gem 'jruby_jobs', path: 'vendor/gems/jruby_jobs'
gem 'open_flash_chart', path: 'vendor/gems/open_flash_chart'
gem 'password_encryptor', path: 'vendor/gems/password_encryptor'
  
platforms :ruby do
  gem "mysql2", '~>0.3.18'
end

platforms :jruby do
  gem "activerecord-jdbc-adapter", '~>1.3.17'
  gem "activerecord-jdbcmysql-adapter", '~>1.3.17'
  gem 'jruby-jars', '9.1.4.0' # needs to be before warbler
  gem 'quartz-jruby', git: 'https://github.com/ocher/quartz-jruby.git', require: 'quartz', branch: 'master'
  gem 'therubyrhino'
  gem 'trinidad'
  gem 'warbler', '~>2.0.3'
end

group :development do
  platforms :ruby do
    gem 'bullet'
    gem 'byebug'
    gem 'rack-livereload'
    gem 'rubycritic', require: false
    gem 'web-console'
  end
end

group :test do
  gem 'single_cov'
  gem 'vcr'
  gem 'webmock'
end

group :development, :test do
  gem "factory_girl_rails", require: false
  gem "syntax", "~> 1.2.0"
  gem 'annotate'
  gem 'brakeman', require: false
  gem 'capybara'
  gem 'database_cleaner'
  gem 'foreman'
  gem 'launchy'
  gem 'poltergeist'
  gem 'pry'
  gem 'pry-rails'
  gem 'rspec-activemodel-mocks'
  gem 'rspec-rails', '~>3.5.2'
  gem 'rspec-retry'
  gem 'timecop'
  gem 'xpath' # required by capybara but did not install via bundler
  gem 'yaml_db'
  gem 'yard'

  # The following gems cause bad things to happen to jruby
  platforms :ruby do
    # Use binding_of_caller if you want
    # but it will slow your browser becuase of the size of this project
    # gem 'binding_of_caller'       # super charge better errors
    gem 'asciidoctor'
    gem 'asciidoctor-pdf'
    gem "guard", '>= 2.2.4'
    gem "quiet_assets"
    gem "shoulda-matchers"
    gem 'guard-brakeman'
    gem 'guard-ctags-bundler'
    gem 'guard-foreman'
    gem 'guard-livereload', require: false
    gem 'guard-rspec', '>= 4.2.0', require: false
    gem 'guard-rubocop'
    gem 'guard-shell'
    gem 'libnotify'
    gem 'parallel_tests'
    gem 'pry-byebug' 
    gem 'rb-inotify', require: false
    gem 'rubocop'
    gem 'rubocop-rspec'
    gem 'spring' # see http://github.com/honleighton/spring - like zeus but 0 config and no background tas
    gem 'spring-commands-rspec'
    gem 'thin' # rails server thin
    gem 'yajl-ruby' # improves comm performance for guard-livereload
  end
end
