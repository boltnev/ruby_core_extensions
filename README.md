installation:

    gem install little_sugar
  
usage: 
  
    require 'little_sugar'
    
    word = "СЪЕШЬ ЕЩЁ ЭТИХ МЯГКИХ ФРАНЦУЗСКИХ БУЛОК, ДА ВЫПЕЙ ЖЕ ЧАЮ." 
   
    word.downcase_utf8 # => "съешь ещё этих мягких французских булок, да выпей же чаю."
  
    word = "съешь ещё этих мягких французских булок, да выпей же чаю." 
   
    word.upcase_utf8 # => "СЪЕШЬ ЕЩЁ ЭТИХ МЯГКИХ ФРАНЦУЗСКИХ БУЛОК, ДА ВЫПЕЙ ЖЕ ЧАЮ."
  
    word = "съешь ещё этих мягких французских булок, да выпей же чаю." 
   
    word.capitalize_utf8 # =>"Съешь ещё этих мягких французских булок, да выпей же чаю."
    
    ##
    
    arr = ["a", "abca", "abcbc", "sd", "qwe"]

    arr.sort_by(&:length) # => ["a", "sd", "qwe", "abca", "abcbc"]

    arr.sort_by(&:ord) # => ["a", "abca", "abcbc", "qwe", "sd"]
  
    arr.uniq_by(&:ord) # => ["a", "sd", "qwe"]
    
    arr.mix # => mixed arr
    
    ##
    
    if obj.not_nil?
        #do something
    end
