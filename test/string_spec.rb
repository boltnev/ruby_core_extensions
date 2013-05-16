#coding: utf-8
require '../lib/core_extensions'

describe String, "#utf8" do

  it "should make russian letters downcase" do
  
    word = "СЪЕШЬ ЕЩЁ ЭТИХ МЯГКИХ ФРАНЦУЗСКИХ БУЛОК, ДА ВЫПЕЙ ЖЕ ЧАЮ." 
   
    word.downcase_utf8.should eq("съешь ещё этих мягких французских булок, да выпей же чаю.")
  
  end
  
  it "should make russian letters upcase" do
  
    word = "съешь ещё этих мягких французских булок, да выпей же чаю." 
   
    word.upcase_utf8.should eq("СЪЕШЬ ЕЩЁ ЭТИХ МЯГКИХ ФРАНЦУЗСКИХ БУЛОК, ДА ВЫПЕЙ ЖЕ ЧАЮ.")
  
  end
end 