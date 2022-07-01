class Map

  def initialize
    @arr = []
  end

  # [[1,2]] 
  # set(4,5) ==> [[1,2], [4,5]]
  # set(1,6) ==> [[1,6], [4,5]]
  def set(key, value)
    # if the key is already included in @arr, change the value in the existing sub_arr
    @arr.each do |sub_arr|
      if sub_arr[0] == key
        sub_arr[1] = value
        return
      end
    end

    # if the key is not included in @arr, push a new sub_arr with [key, value]
    sub_arr = [key, value]
    @arr.push(sub_arr)
    return
  end

  # [[1, 6], [4, 5]]
  # get(4) ==> 5
  # get(1) ==> 6
  # get(8) ==> nil
  def get(key)

    @arr.each do |sub_arr|
      if sub_arr[0] == key
        return sub_arr[1]
      end
    end
    
    return nil
  end

  def delete(key)
    @arr.each_with_index do |sub_arr, i|
      if sub_arr[0] == key
        @arr.delete(sub_arr)
      end
    end
  end

  def show

  end
end


