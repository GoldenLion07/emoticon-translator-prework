# require modules here
require 'yaml'

def load_library
  # code goes here
      new_hash = {
   "get_meaning" => {},
   "get_emoticon" => {}
 }
 library.each do |meaning, translation|
   english = translation[0]
   japanese = translation[1]
   new_hash["get_meaning"][japanese] = meaning
   new_hash["get_emoticon"][english] = japanese
 end
  return new_hash

end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
 library = load_library(file_path)
  library["get_emoticon"].each do |key, value|
    if key == emoticon
      puts value
    end
  end
end

def get_english_meaning
  # code goes here
    library = load_library(file_path)
  library["get_emoticon"].each do |key, value|
    if key == emoticon
      puts value
    end
  end

end

test_emoticons = {"angel"=>["O:)", "japanese_angel"], "angry"=>[">:(", "japanese_angry"], "bored"=>[":O", "japanese_bored"], "confused"=>["%)", "japanese_confused"]}

