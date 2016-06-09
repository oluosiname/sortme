module Sortme
  class Path
    require "json"

    def self.set
      puts "Do you want to use default paths? (type y if you are unsure) (y/n) "
      choice = gets.chomp.downcase

      @@mac_home = home = File.expand_path("~")
      if choice=="y" && mac?
        default_mac
      elsif choice=="y" && windows?
        default_windows
      elsif choice=="custom"
        custom
      else
        p "oops! run again"
        exit
      end

    end

    def self.mac?
      /darwin/ =~ RUBY_PLATFORM
    end

    def self.windows?
      /cygwin|mswin|mingw|bccwin|wince|emx/ =~ RUBY_PLATFORM
    end

    def self.custom
      puts "Enter video path"
      video_path = gets.chomp

      puts "Enter music path"
      music_path = gets.chomp

      puts "Enter picture path"
      picture_path = gets.chomp

      save video_path, music_path, picture_path
    end

    def self.get
      home = File.expand_path("~")
      settings = "#{home}/sortme_settings.json"
      json = File.read(settings)
      JSON.parse(json)
    end

    def self.default_mac
      picture_path = "#{@@mac_home}/Pictures"
      video_path = "#{@@mac_home}/Movies"
      music_path = "#{@@mac_home}/Music"

      save video_path, music_path, picture_path
    end

    def self.save(video_path, music_path, picture_path)
      home = File.expand_path("~")

      system "echo '{\"video\":\"#{video_path}\",\"picture\":\"#{picture_path}\"
      ,\"music\":\"#{music_path}\"}' > #{home}/sortme_settings.json"
    end

    def self.default_windows
      picture_path =
      video_path =
      music_path =

      save video_path, music_path, picture_path
    end
  end
end
