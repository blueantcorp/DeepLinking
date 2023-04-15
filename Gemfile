source 'https://rubygems.org'

ruby File.read('.ruby-version').strip

# gem 'danger'
# gem 'danger-xcov'
# gem 'danger-swiftlint'
# gem 'danger-prose'
# gem 'danger-slather'
# gem 'danger-swiftformat'
# gem 'danger-xcode_summary'
# gem 'slather'
# gem 'codecov'
# gem 'sourcery'
# gem 'xcpretty'

gem 'fastlane'
gem 'rubocop', require: false

plugins_path = File.join(File.dirname(__FILE__), 'fastlane', 'Pluginfile')
# rubocop:disable Security/Eval
eval(File.read(plugins_path), binding) if File.exist?(plugins_path)
# rubocop:enable Security/Eval
