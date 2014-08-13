require 'spec_helper'

describe Division do

  it "should have many employees." do
    division = Division.create({:name => "Happy Fun Time Super Friends"})
    expect(division.employees).to eq []
  end
end
