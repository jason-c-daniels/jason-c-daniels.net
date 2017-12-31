module Program
   def getScriptName
      return File.basename(caller_locations.first.path)
   end
   class Application
      def get_version
         return "<version not defined>"
      end

      def get_usage
         return "<usage not defined>"
      end

      def print_version?(args)
         return false;
      end

      def valid_args?(args)
         return true;
      end


      def execute(args)
         if (valid_args?(args))
            if print_version?(args)
               puts "#{getScriptName} v#{get_version}"
            else
               main(args)
            end
         else
            puts get_usage
         end
      end

      def main(args)
         #noop
      end
   end
end