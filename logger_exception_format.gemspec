# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{logger_exception_format}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["MOROHASHI Kyosuke"]
  s.date = %q{2009-02-28}
  s.description = %q{let ActiveSupport::BufferedLogger log an exception detail.}
  s.email = %q{moronatural@gmail.com}
  s.extra_rdoc_files = ["README.rdoc", "ChangeLog"]
  s.files = ["README.rdoc", "ChangeLog", "Rakefile", "lib/logger_exception_format.rb", "spec/exception_format_logger_spec.rb", "spec/spec_helper.rb", "rails/init.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/moro/logger_exception_format/tree/master}
  s.rdoc_options = ["--title", "logger_exception_format documentation", "--charset", "utf-8", "--opname", "index.html", "--line-numbers", "--main", "README.rdoc", "--inline-source", "--exclude", "^(examples|extras)/"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{let ActiveSupport::BufferedLogger log an exception detail.}
  s.test_files = ["spec/exception_format_logger_spec.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
