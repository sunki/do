module DataObjects
  class SQLError < Error

    attr_reader :message
    attr_reader :code
    attr_reader :sqlstate
    attr_reader :query
    attr_reader :uri

    def initialize(message, code = nil, sqlstate = nil, query = nil, uri = nil)
      @message = message
      @code = code
      @sqlstate = sqlstate
      @query = query
      @uri = uri
    end

    def to_s
      "#{message.force_encoding("UTF-8")} (code: #{code}, sql state: #{sqlstate}, query: #{query.force_encoding("UTF-8")}, uri: #{uri})"
    end
  end
end
