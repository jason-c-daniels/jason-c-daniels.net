require "json"
require "titlecase" #sudo gem install titlecase

module Util
   extend self
   VERSION = "1.0.0"

   def getScriptName
      return File.basename(caller_locations.first.path)
   end


   def getSiteDir
       return File.expand_path(File.dirname(File.dirname(__FILE__)))
   end

   def getTemplateDir
      return "#{getSiteDir}/_templates"
   end

   def getPermalinkName(title)
        return "#{title.strip.downcase.gsub(/\s/,'-')}"
   end

   def getCanonicalFileSystemName(title)
        return "#{title.strip.downcase.gsub(/\s/,'-')}"
   end

   def getCanonicalTitle(title)
        return title.strip.downcase.titlecase
   end
end



module MyBase
    extend self
    def foo
        puts "base foo"
    end
end

module MyDerived
    extend MyBase
    def foo
        puts "new foo"
    end
end