require File.join(File.dirname(__FILE__), '..', '..', 'spec_helper')
require 'scruffy'
  
describe "Any layer" do

  # TODO these appear to be invalid tests due to changes made to coordinate
  # generatation. Should be updated. [brasten]
  #

#  it "should accept but ignore nil data" do
#    render([100, nil, 300]).should eql([[0.0, 400], [400.0, 0.0]])
#  end
  
#  it "should accept hash data as sequentially-keyed data" do
#    render([100, nil, 300]).should eql([[0.0, 400], [400.0, 0.0]])
#    render({0 => 100, 2 => 300}).should eql([[0.0, 400], [400.0, 0.0]])
#  end
  
  def render(points)
    layer = Scruffy::Layers::Base.new(:title => 'My base Layer', :points => points)
      
    #stub out draw to just return coords
    class << layer; def draw(svg, coords, options={}); coords end; end;
      
    coords = []
      
    lambda {
      size = [400,400]
      coords = layer.render(Scruffy::Renderers::Base.new.render(:layers => [layer], :size => size), 
                    :size => size, :min_value => 100, :max_value => 300, :min_key => 0, :max_key => 2)
    }.should_not raise_error
      
    coords
  end
end