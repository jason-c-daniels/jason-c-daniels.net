module Program
   class Application
      def print_usage?
         return ARGV.length>0 && ARGV[0]=="--help";
      end

      def print_version?
         return ARGV.length>0 && ARGV[0]=="--version";
      end

      def valid_args?
         return true;
      end

      def execute
         if print_version?
            puts "#{APP_NAME} v#{APP_VERSION}"
            exit 0
         elsif print_usage?
            puts APP_USAGE
            exit 0
         elsif valid_args?
            main
            exit 0
         else
            puts APP_USAGE
            exit 1
         end
      end

      def main
         # do nothing by default
      end
   end
end