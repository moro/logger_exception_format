#!/usr/bin/env ruby
# vim:set fileencoding=utf-8 filetype=ruby
# $KCODE = 'u'

require File.expand_path("spec_helper", File.dirname(__FILE__))
require 'active_support'
require 'active_support/buffered_logger'

describe LoggerExceptionFormat do
  before :all do
    ActiveSupport::BufferedLogger.send(:include, LoggerExceptionFormat)
  end

  before do
    @logger = ActiveSupport::BufferedLogger.new(@buf = StringIO.new)
    
    begin; raise "An Error" ; rescue => ex ; @exception = ex ; end
  end

  it do
    @logger.debug(@exception)

    @buf.string.split(/\n/).should have(@exception.backtrace.length + 1).items
  end

  it 'first_line.should == "[RuntimeError] An Error"' do
    @logger.debug(@exception)

    first_line = @buf.string.split(/\n/).first.strip
    first_line.should == "[RuntimeError] An Error"
  end

  it "Ensure not break normal logging." do
    @logger.debug("ensure not break normal logging.")

    @buf.string.should == "ensure not break normal logging.\n"
  end
end

