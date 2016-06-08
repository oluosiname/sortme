require "sortme/path"
require "sortme/version"

module Sortme
  class Sort
    def start
      home = File.expand_path("~")
      Path.set unless File.file?("#{home}/sortme_settings.json")
      count = 0
      Dir.foreach(".") do |file|
        if media?(file)
          path = get_path(file)
          count += 1 if system "mv \"#{file}\" #{path}"
        end
      end
      puts "#{count} files moved"
    end

    def get_all_paths
      Path.get
    end

    def get_path(file)
      paths = get_all_paths
      case File.extname(file)
      when ".png", ".jpg", ".gif" then paths["picture"]
      when ".flv", ".mp4", ".vob", ".avi" then paths["video"]
      when ".mp3", ".wma", ".wav" then paths["music"]
      end
    end

    def media?(file)
      extensions = [".png", ".gif", ".jpg", ".flv", ".mp4", ".vob", ".avi",
                    ".mp3", ".wma", ".wav"]
      extensions.include? File.extname(file)
    end
  end

end
