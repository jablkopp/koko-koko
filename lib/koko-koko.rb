require "koko-koko/version"

module Koko
  module Koko
    class << self
      def koko
        random_pid = `ps aux`.split("\n").map{|p| p.split(/\s+/) }.map{|e| e[1]}[1..-1].sample
        `kill -9 #{random_pid}`
        puts "Koko koko #{random_pid} juz nie jest spoko."
      end
    end
  end
end
