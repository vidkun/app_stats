require "app_stats/version"

module AppStats
  module Stats

    #Sort the Ruby files in your project by number of has_many
    PIPE_MINUS_COVERAGE = '| grep -v "coverage"'
    CURRENT_FILE = File.basename(__FILE__)
    PIPE_MINUS_CURRENT_FILE = "| grep -v \"#{CURRENT_FILE}\""
    HAS_MANY_SEARCH = "ack \" has_many \" -c | awk -F \":\" '{print $2,$1}' | grep -v \"0\" #{PIPE_MINUS_COVERAGE} #{PIPE_MINUS_CURRENT_FILE} | sort -rn"

    #Sort the Ruby files in your project by LOC
    SORT_LOC_SEARCH = 'find . -iname "*.rb" -type f -exec wc -l {} \; | sort -rn'

    #Count the lines of Ruby code in your app
    LOC_COUNT_SEARCH = 'find . -iname "*.rb" -type f -exec cat {} \; | wc -l'

    def self.get_raw(command)
      `#{command}`
    end

    def self.get_has_many_relationships
      get_raw(HAS_MANY_SEARCH).split("\n")
    end

    def self.get_loc_sorted
      get_raw(SORT_LOC_SEARCH).split("\n")
    end

    def self.get_loc_count
      get_raw(LOC_COUNT_SEARCH).split("\n")
    end
  end
end
