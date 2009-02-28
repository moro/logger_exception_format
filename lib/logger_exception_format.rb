module LoggerExceptionFormat
  Version = "0.0.1"
  def self.included(base)
    base.alias_method_chain :debug, :exception_format
  end

  def debug_with_exception_format(message=nil, programe=nil, &block)
    return message unless debug?
    if message.is_a? Exception
      debug_without_exception_format do 
        lines = ["[#{message.class}] #{message.message}"]
        lines << message.backtrace.map{|t| "  #{t}" }
        lines.join("\n")
      end
    else
      debug_without_exception_format(message, programe, &block)
    end
  end
end
