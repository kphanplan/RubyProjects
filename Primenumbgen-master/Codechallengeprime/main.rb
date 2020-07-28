require_relative 'lib/primegen'

if ARGV.length == 2
  print "#{Primealpha.run(ARGV[0].to_i, ARGV[1].to_i)}\n"
else
  print "Enter valid number of arguments or check spacing! e.g. 1, 100"
end
