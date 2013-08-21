# -*- encoding : utf-8 -*-
#

unless defined?(Bacon)
  require 'bacon'
end

require 'colored'

module Bacon
  module SpecDoxOutput

    def handle_requirement(description)
      error = yield
      color = case error
              when 'FAILED'
                :red
              else
                :yellow
              end

      mark = error.empty? ? "✓ ".green : "✗ ".send(color)
      print " #{mark}#{description}"

      return puts("") if error.empty?
      puts " [#{error}]".send(color)
    end

    def handle_summary
      specs, reqs, fails, errs = Counter.values_at(:specifications, :requirements, :failed, :errors)
      all_pass = reqs > 1 && (fails == errs) && (errs == 0)

      print ErrorLog  if Backtraces

      print "%d specifications (%d requirements)".send(all_pass ? :green : :to_s ) % [ specs, reqs ]

      if all_pass
        print( ". All pass. ".green )
      else
        print ", "
        print "#{fails} failures".send( fails > 0 ? :red : :to_s )
        print ", "
        print "#{errs} errors".send( errs > 0 ? :yellow : :to_s )
        print ". "
      end

      puts
      puts
    end

  end # === module
end # === module
