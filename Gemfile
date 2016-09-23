source 'https://rubygems.org'


git 'https://github.com/makandra/rails.git', :branch => '2-3-lts' do
  gem 'rails', '~>2.3.18'
  gem 'actionmailer',     :require => false
  gem 'actionpack',       :require => false
  gem 'activerecord',     :require => false
  gem 'activeresource',   :require => false
  gem 'activesupport',    :require => false
  gem 'railties',         :require => false
  gem 'railslts-version', :require => false
end

gem "passenger"
gem "mysql"
gem "authorization"
gem 'json'
#, '1.8.2' # (CVE-2013-026) Can remove once rails depends on > 1.7.6
gem 'haml', "3.0.25"
gem 'googlecharts', "1.6.0"
gem 'calendar_date_select', "1.16.1"
gem "acts-as-taggable-on", "2.0.6"
gem "newrelic_rpm"
gem 'hoptoad_notifier'
#gem 'validates_email_format_of'

group :development, :test do
  gem 'rdoc'
  gem 'annotate'
  gem 'test-unit'
  gem 'thoughtbot-shoulda'
end
