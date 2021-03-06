require 'cequel'
require 'octocore-cassandra/record'

module Octo
  class ApiEvent
    include Cequel::Record
    include Octo::Record

    belongs_to :enterprise, class_name: 'Octo::Enterprise'

    key :eventname, :text
  end
end

