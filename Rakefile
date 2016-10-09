task :default => [:minitest, :flog, :loc]

task :minitest do
  puts `ruby ./test/bottles_test.rb`
end

task :flog do
  puts `flog ./lib`
end

task :loc do
  puts 'Lines of Code'
  puts `cat lib/bottles.rb | grep -v ^$ | wc -l`
end
