require "spec_helper"
require "jekyll-assets/compass"


module Jekyll::AssetsPlugin
  describe "Compass integration" do
    it "should globally append compass paths into Sprockets environment" do
      @site.assets["vendor/compass.css"].to_s.should =~ /linear-gradient/
    end
  end
end
