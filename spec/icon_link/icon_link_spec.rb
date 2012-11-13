# encoding: utf-8
require 'spec_helper'

describe IconLink::ViewHelpers do
  describe "iconize" do
    let(:title){ "Title" }
    
    describe "when icon present" do
      let(:icon){ "icon-comment" }
      let(:result){ iconize(title, icon) }
      
      it "should have the right title" do
        result.should =~ /\s#{title}/
      end
      
      it "should have the right html" do
        result.should have_xpath("//i[@class='#{icon}']")
      end
    end
    
    describe "when icon not present" do
      let(:result){ iconize(title) }
      
      it "should have the right title" do
        result.should =~ /\A#{title}/
      end
      
      it "should have the right html" do
        result.should_not have_xpath("//i")
      end
    end
  end
  
  describe "icon_button_tag" do
    let(:title){ "Create model"}
    let(:options){ {icon: "icon-comment", class: "btn"} }
    let(:result){ icon_button_tag(title, options) }
  
    it "should have the right title" do
      result.should have_xpath("//button[text()=' #{title}']")   
    end
    it "should have the right class" do
      result.should have_xpath("//button[@class='btn']")
    end
    it "should have the right icon" do
      result.should have_xpath("//button/i[@class='icon-comment']")
    end
    it "should be a submit button by default" do
      result.should have_xpath("//button[@type='submit']")
    end
    it "should handle when icon is nil" do
      result_when_icon_nil = icon_button_tag(title)
      result_when_icon_nil.should have_xpath("//button[text()='#{title}']")
      result_when_icon_nil.should_not have_xpath("//button/i")
    end
  end
  
  describe "icon_link_to" do
    let(:title){ "Title"}
    let(:url){ "http://www.example.com"}
    let(:options){ {icon: "icon-comment", class: "btn"} }
    let(:result){ icon_link_to(title, url, options) }
  
    it "should have the right title" do
      result.should have_xpath("//a[text()=' #{title}' and @href='#{url}']")
    end
    it "should have the right class" do
      result.should have_xpath("//a[@class='btn']")
    end
    it "should have the right icon" do
      result.should have_xpath("//a/i[@class='icon-comment']")
    end
    it "should handle when icon is nil" do
      result_when_icon_nil = icon_link_to(title, url)
      result_when_icon_nil.should have_xpath("//a[text()='#{title}' and @href='#{url}']")
      result_when_icon_nil.should_not have_xpath("//button/i")
    end
  end
  
end