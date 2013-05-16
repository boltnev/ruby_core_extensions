#coding: utf-8
require File.dirname(__FILE__) + '/../lib/little_sugar'

describe Array do

  it "should sort by method" do
  
    arr = ["a", "abca", "abcbc", "sd", "qwe"]

    arr.sort_by(&:length).should eq(["a", "sd", "qwe", "abca", "abcbc"])

    arr.sort_by(&:ord).should eq(["a", "abca", "abcbc", "qwe", "sd"])

  end
  
  it "should uniq by method" do
  
    arr = ["a", "abca", "abcbc", "sd", "qwe"]

    arr.uniq_by(&:ord).should eq(["a", "sd", "qwe"])

  end
  
end 
