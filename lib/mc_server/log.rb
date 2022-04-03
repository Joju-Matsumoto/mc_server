module MCServer
  class Log
    START = 0
    STOP = 1
    CRASH = 2
    CONNECT = 3
    DISCONNECT = 4

    attr_reader :type, :time, :player_name, :player_id

    # @param [String] line ログの一行
    def self.parse(line)
      tmp = line.split(" ")
      @time = Time.parse(tmp[0, 2].join(" ").gsub(/\[\]/, ""))
    end

    private_class_method :new
  end
end
