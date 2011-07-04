#load all rake files from gem into the app
Dir["#{Gem.searcher.find('cowplop').full_gem_path}/**/tasks/*.rake"].each { |ext| load ext }

class Cowplop

  def self.seed
    "oooya"
  end
end

