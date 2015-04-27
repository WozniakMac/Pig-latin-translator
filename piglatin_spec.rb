#!/usr/bin/env ruby -wKU
require "spec_helper"
require_relative "piglatin"

describe PigLatin do
	describe ".translate" do
  	it { PigLatin.should respond_to :translate }
		
		it "should tralsate" do
			PigLatin.translate("Maciek").should == "Aciekmay" 
		end

		it "should translate long text" do
			PigLatin.translate("Maciek je placki").should == "Aciekmay ejay lackipay"
		end
	end

end