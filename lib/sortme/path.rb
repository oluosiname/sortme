module Sortme
  class Path
    require "json"

    def set
      puts "Enter video path"
      video_path = gets.chomp

      puts "Enter music path"
      music_path = gets.chomp

      puts "Enter picture path"
      picture_path = gets.chomp

      system "echo '{\"video\":\"#{video_path}\",\"picture\":\"#{picture_path}\"
      ,\"music\":\"#{music_path}\"}' > filesorter_settings.json"
    end

    def get
      settings = "filesorter_settings.json"
      json = File.read(settings)
      JSON.parse(json)
    end
  end
end
