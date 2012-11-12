# encoding: utf-8
require 'spec_helper'

describe IconLink::ViewHelpers do
  let(:title){ "Create model"}
  let(:options){ {icon: "icon-comment", class: "btn"} }
  let(:result){ icon_button_tag(title, options) }
  
  it "should have the right text" do
    result.should have_xpath("//button[text()=' #{title}']")
  end
  it "should have the right class" do
    result.should have_xpath("//button[@class='btn']")
  end
  it "should have the right icon" do
    result.should have_xpath("//button/i[@class='icon-comment']")
  end
end