class Triangle
  def self.check_triangle(side_1, side_2, side_3)
    array = [side_1, side_2, side_3]
    array.sort!

    if array[0] == 0 then
        return "usage: triangle.rb side1 side2 side3"
    end
    if isEquilateral?(array) then
        return "正三角形ですね！"
    elsif isIsosceles?(array) then
        return "二等辺三角形ですね！"
    elsif isScalene?(array) then
        return "不等辺三角形ですね！"
    else
        return "三角形じゃないです＞＜"
    end
    
  end

  # 正三角形チェック
  def self.isEquilateral?(array)
    if array[0] == array[1] && array[1] == array[2] then
        return true
    else
        return false
    end
  end
  
  # 二等辺三角形チェック
  def self.isIsosceles?(array)
    if array[0] == array[1] && (array[0] + array[1]) > array[2] then
        return true
    elsif array[1] == array[2] && (array[1] + array[2]) > array[0] then
        return true
    else
        return false
    end
  end

  # 不等辺三角形チェック
  def self.isScalene?(array)
    if array[0] < array[1] && (array[0] + array[1]) > array[2] then
        return true
    else
        return false
    end
  end

end

puts(Triangle.check_triangle(ARGV[0].to_i, ARGV[1].to_i, ARGV[2].to_i))

