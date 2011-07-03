require 'spec_helper'
require 'cowplop'

describe Cowplop do

   it "should say ooya" do
     Cowplop.seed.should == "oooya"
   end

end
