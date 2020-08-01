require 'yaml'
require 'pry'

def load_library(file_path)
emoticons = YAML.load_file(file_path)
emoticon_lib = emoticons.each_with_object ({}) do |(key, value), new_hash|
 new_hash[key] = {:english => value[0], :japanese => value[1]}
  end
end

def get_japanese_emoticon(file_path, emoticon)
  emoticon_lib = load_library(file_path)
  japanese_emoticon = emoticon_lib[:japanese] 
end
end

def get_english_meaning(file_path, emoticon)
  emoticon_lib = load_library(file_path)
  meaning = emoticon_lib[:english][emoticon]
 end
end