require "bundler/gem_tasks"

require 'json'

desc "Update assets"
task :update do
  if Dir.exist?('bootstrap-datetimepicker-src')
    system("cd bootstrap-datetimepicker-src && git pull && cd ..")
  else
    system("git clone git://github.com/smalot/bootstrap-datetimepicker.git bootstrap-datetimepicker-src")
  end
  system("cp bootstrap-datetimepicker-src/css/bootstrap-datetimepicker.css vendor/assets/stylesheets/bootstrap-datetimepicker.css")
  system("cp bootstrap-datetimepicker-src/js/bootstrap-datetimepicker.js vendor/assets/javascripts/bootstrap-datetimepicker.js")
  system("cp -R bootstrap-datetimepicker-src/js/locales/ vendor/assets/javascripts/bootstrap-datetimepicker/locales/")
  system("git status")

  puts "\n"
  puts " bootstrap-datetimepicker version:       #{JSON.parse(File.read('./bootstrap-datetimepicker-src/bower.json'))['version']}"
  puts "bootstrap-datetimepicker-rails version: #{Bootstrap::Datetimepicker::Rails::VERSION}"
end
