class Testwebsite
#POM Superclass. All stepdefs will use this as a base.
#The below method allows access to all the pages without having to manually specify them as their own class instances.
#Any method that isn't explicity specified in the test class will go through method missing, which then creates and returns
#the class instance you give it. Also allows you to call methods for the class instance.
#Method usage: class_name_you_want_to_use.methodname
  def method_missing(method_name, *arguments, &block)
    @@screens ||= Hash.new
    class_name = method_name.to_s.split('_').join.capitalize
    @@screens[method_name] ||= Object.const_get("Pages::#{class_name}").new
  end
end