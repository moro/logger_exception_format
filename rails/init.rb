require 'active_support'
require 'active_support/buffered_logger'

ActiveSupport::BufferedLogger.send(:include, LoggerExceptionFormat)

