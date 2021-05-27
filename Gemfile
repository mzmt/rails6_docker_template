source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# backend
# =========================================
gem 'pg'
gem 'puma', '~> 4.1'
ruby '2.7.0'
gem 'rails', '~> 6.0.3', '>= 6.0.3.5'
# =========================================

# frontend
# =========================================
gem 'sass-rails', '>= 6'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 4.0'
# =========================================

# other
# =========================================
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'bootsnap', '>= 1.4.2', require: false
# =========================================

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
