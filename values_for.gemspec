Gem::Specification.new do |s|
  s.name = "values_for"
  s.version = "0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.author = "Justin Leitgeb"
  
  s.date = "2009-06-17"
  s.description = <<-EOS
    values_for makes your ActiveRecord-backed class work with an enumerable type.  Instead of existing 
    ActiveRecord plugins such as enum_fu, which store the enumerable attribute as an integer, values_for 
    stores the content of the enumerable attribute in a varchar column of the database.  The field will
    automatically validate using validates_inclusion_of and accepts all the same options. 

    values_for will also optionally create named scopes, predicate methods, and constants defining the 
    possible values for enumerable types on your model.  By default, however, it avoids polluting your
    model with things you may not need unless these features are specifically requested.
  EOS
  
  s.email = "justin@stackbuilders.com"
  
  s.files = [
    "values_for.gemspec", "lib/values_for.rb", "LICENSE", "Rakefile", "README.rdoc", 
    "spec/values_for_spec.rb", "spec/spec_helper.rb"
  ]
  
  s.has_rdoc = true
  s.homepage = "http://github.com/jsl/values_for"
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = "Adds an enumerable attribute to an ActiveRecord-backed class"
  s.test_files = ["spec/values_for_spec.rb", "spec/spec_helper.rb"]

  s.extra_rdoc_files = [ "README.rdoc" ]
  
  s.rdoc_options += [
    '--title', 'Values For',
    '--main', 'README.rdoc',
    '--line-numbers',
    '--inline-source'
   ]

  %w[ activerecord activesupport ].each do |dep|
    s.add_dependency(dep)
  end

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2
  end
end
