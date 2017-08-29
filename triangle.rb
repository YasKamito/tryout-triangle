class Triangle
  def self.check_triangle(side_1, side_2, side_3)
    array = [side_1, side_2, side_3]
    array.sort!

    if isEquilateral?(array) then
        p "正三角形ですね！"
        return 1
    elsif isIsosceles?(array) then
        p "二等辺三角形ですね！"
        return 2
    elsif isScalene?(array) then
        p "不等辺三角形ですね！"
        return 3
    else
        p "三角形ではないです"
        return -1
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
    if array[1] == array[2] && (array[1] + array[2]) > array[0] then
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
