require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe "Equilateral triangle" do
  specify { expect(Triangle.check_triangle(1,1,1)).to eq 1 }
end

describe "Isosceles triangle" do
  specify { expect(Triangle.check_triangle(2,2,1)).to eq 2 }
end

describe "Scelene triangle" do
  specify { expect(Triangle.check_triangle(3,2,4)).to eq 3 }
end

describe "Not triangle" do
  specify { expect(Triangle.check_triangle(3,2,1)).to eq -1 }
end
