require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe "Equilateral triangle" do
  specify { expect(Triangle.check_triangle(1,1,1)).to eq("正三角形ですね！") }
end

describe "Isosceles triangle" do
  specify { expect(Triangle.check_triangle(2,2,1)).to eq("二等辺三角形ですね！") }
  specify { expect(Triangle.check_triangle(2,2,3)).to eq("二等辺三角形ですね！") }
  specify { expect(Triangle.check_triangle(2,2,4)).to eq("三角形じゃないです＞＜") }
end

describe "Scelene triangle" do
  specify { expect(Triangle.check_triangle(3,2,4)).to eq("不等辺三角形ですね！") }
  specify { expect(Triangle.check_triangle(3,2,5)).to eq("三角形じゃないです＞＜") }
end

describe "Not triangle" do
  specify { expect(Triangle.check_triangle(3,2,1)).to eq("三角形じゃないです＞＜") }
end
