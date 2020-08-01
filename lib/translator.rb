require 'yaml'
require 'pry'

def load_library(file_path)
emoticons = YAML.load_file(file_path)
result = emoticons.each_with_object ({}) do |(key, value), new_hash|
 new_hash[key] = {:english => value[0], :japanese => value[1]}
  end
end

def get_japanese_emoticon(file_path, emoticon)
  emoticons = load_library('lib/emoticons.yml')
  result = emoticons["get_emoticon"][emoticon]
  if result
    result
end
end

def get_english_meaning
  emoticons = load_library('lib/emoticons.yml')
  result = emoticons["get_emoticon"][emoticon]
  if result
    result
 end
end