require 'prime'

module Primealpha                                   #test 1
  class << self                                     #test 2
    def pri(g)                                      #test 3
      g.prime?                                      #test 4
    end
    def primefinder(a, b)                           #test 3
      $i = 0                                        #test 8
      (0..b).each do |c|                            #test 5, 5a
        $c = c                                      #test 5, 5a
        if c.prime?                                 #test 6
          $i += 1                                   #test 8
          if c.prime? and c >= a                    #test 6
            $msg = "#{c} is prime number #{$i}"     #test 7
            puts "#{$msg}"                          #test 7
          end
        end
      end
    end
    def run(x, y)                                   #test 3
      unless x < y                              #v v v test 11
        z = x
        x = y
        y = z
        $x = x , $y = y                         #^ ^ ^ test 11
        primefinder(x, y)                            #test 10
        $rmsg = "(#{y}..#{x}) range is backwards..." #test 12
        puts "#{$rmsg}"                              #test 12
      else
        primefinder(x, y)                            #test 10
      end
    end
  end
end
