# require modules here
require 'yaml'
def load_library(file)
  library = {"get_meaning" => {}, "get_emoticon" => {}}
  YAML.load_file(file).each do |meaning, array|
    english, japanese = array
    library["get_emoticon"][english] = japanese
    library["get_meaning"][japanese] = meaning
  end
    library
end


def get_japanese_emoticon
  # code goes here
  library = load_library
end

def get_english_meaning
  # code goes here
end