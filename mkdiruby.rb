

abort("mkdir: missing/too much input") if ARGV.empty? || ARGV[1] != nil

folder_name = ARGV.first
Dir.mkdir(folder_name)
Dir.chdir("./#{folder_name}")
Dir.mkdir("lib")
file = File.new("Gemfile", "a")
File.open("Gemfile", "a")
file.puts "source 'https://rubygems.org'"
file.puts "ruby '2.5.1'"
file.puts "gem 'rspec'"
file.puts "gem 'pry'"
file.puts "gem 'nokogiri'"
file.close
system("bundle install")
system("rspec --init")
system("git init")

file = File.new("README.md", "w")
file.close

