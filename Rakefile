require 'rake/testtask'

Rake::TestTask.new do |t|
   t.test_files = FileList['specs/*_spec.rb']
 end

task default: :test


#TestTask : will set up our files so that is will only test files that fit the above criteria of FileList['specs/*_spec.rb']. meaning the files that are in the specs folder and are a .rb file
