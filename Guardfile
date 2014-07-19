# vim: ft=ruby

guard :minitest,  spring: 'rake test' do
  # with Minitest::Unit
  watch(%r{^test/(.*)\/?test_(.*)\.rb$})
  watch(%r{^lib/(.*/)?([^/]+)\.rb$})     
  watch(%r{^test/test_helper\.rb$})      

  # Rails 4
   watch(%r{^app/(.+)\.rb$})                               
   watch(%r{^app/controllers/application_controller\.rb$}) 
   watch(%r{^app/controllers/(.+)_controller\.rb$})        
   watch(%r{^app/views/(.+)_mailer/.+})                   
   watch(%r{^lib/(.+)\.rb$})                               
   watch(%r{^test/.+_test\.rb$})
   watch(%r{^test/test_helper\.rb$}) 
end

guard 'livereload' do
  watch(%r{app/views/.+\.(erb|haml|slim)$})
  watch(%r{app/helpers/.+\.rb})
  watch(%r{public/.+\.(css|js|html)})
  watch(%r{config/locales/.+\.yml})
  # Rails Assets Pipeline
  watch(%r{(app|vendor)(/assets/\w+/(.+\.(css|js|html|png|jpg))).*}) { |m| "/assets/#{m[3]}" }
end

guard 'livereload' do
  watch(%r{app/views/.+\.(erb|haml|slim)$})
  watch(%r{app/helpers/.+\.rb})
  watch(%r{public/.+\.(css|js|html)})
  watch(%r{config/locales/.+\.yml})
  # Rails Assets Pipeline
  watch(%r{(app|vendor)(/assets/\w+/(.+\.(css|js|html|png|jpg))).*}) { |m| "/assets/#{m[3]}" }
end

guard :bundler do
  watch('Gemfile')
end
