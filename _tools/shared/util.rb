require "json"
require "titlecase" #sudo gem install titlecase


module Util
   extend self
   VERSION = "1.0.0"

   def getSiteDir
       return File.expand_path(File.dirname(File.dirname(__FILE__)))
   end

   def getTemplateDir
      return "#{getSiteDir}/_templates"
   end

   def getCanonicalFileSystemName(title)
        return "#{title.strip.downcase.gsub(/\s/,'-')}"
   end

   def getCanonicalTitle(title)
        return title.strip.downcase.titlecase
   end

end