require "koko-koko/version"
module Koko
  module Koko
    class << self
      def koko
        pids = `ps aux`.split("\n").map{|p| p.split(/\s+/) }.map{|e| e[1]}[1..-1]
        pids.delete($?.pid.to_s)
        random_pid = pids.sample
        `kill -9 #{random_pid}`
        puts "Koko koko #{random_pid} juz nie jest spoko."
      end
    end
  end
end
