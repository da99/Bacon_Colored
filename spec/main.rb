# -*- encoding : utf-8 -*-
# 
require File.expand_path('spec/helper')
require 'Bacon_Colored'

describe "Bacon_Colored" do
  
  before do
    @run = lambda { |name|
      %x! bundle exec bacon spec/tests/#{name}.rb!
    }
  end
  
  it("prints green when tests pass.") {
    result = @run.call("pass")
    result["\e[32m✓ \e[0mpasses"].should.not.be == nil
  }
  
  it("prints red when tests fail.") {
    @run.call("fail")["\e[31m✗ \e[0mfails\e[31m [FAILED]\e[0m"].should.not.be == nil
  }
  
  it("prints green/red when tests pass/fail.") {
    out = @run.call("pass_fail")
    out["\e[32m✓ \e[0mpasses"].should.not.be == nil
    out["\e[31m✗ \e[0mfails\e[31m [FAILED]\e[0m"].should.not.be == nil
  }
  
end # === describe Bacon_Colored

