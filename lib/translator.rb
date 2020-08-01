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
    emoticon_lib.each do |key, value| 
      binding.pry
    value.each do |inner_key, faces|
      faces.each do |face|
        if face = emoticon
          
        end
      end
    end
  end
    
end


def get_english_meaning(file_path, emoticon)
  emoticon_lib = load_library(file_path)
  
 end