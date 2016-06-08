module Sortme
  class Path
    require "json"

    def self.set
      puts "Enter video path"
      video_path = gets.chomp

      puts "Enter music path"
      music_path = gets.chomp

      puts "Enter picture path"
      picture_path = gets.chomp

      home = File.expand_path("~")

      system "echo '{\"video\":\"#{video_path}\",\"picture\":\"#{picture_path}\"
      ,\"music\":\"#{music_path}\"}' > #{@@home}/sortme_settings.json"
    end

    def self.get
      home = File.expand_path("~")
      settings = "#{home}/sortme_settings.json"
      json = File.read(settings)
      JSON.parse(json)
    end
  end
end
