
#Exercise 1
class Stack

  def initialize
    @inside_arr = []
  end

  def push(el)
    inside_arr.push(el)
    el
  end

  def pop
    inside_arr.pop
  end

  def peek
    inside_arr[-1]
  end

  private

  attr_reader :inside_arr
end

#Exercise 2
class Queue

  def initialize
    @inside_arr = []
  end

  def enqueue(el)
    inside_arr.push(el)
    el
  end

  def dequeue
    inside_arr.shift
  end

  def peek
    inside_arr[0]
  end

  private

  attr_reader :inside_arr
end

#Exercise 3
class Map

  def initialize
    @inside_arr = []
  end

  def set(key, val)
    same_idx = inside_arr.index {|same| same[0] == key}
    if same_idx
      inside_arr[same_idx][1] = val
    else
      inside_arr.push([key, val])
    end
    val
  end

  def get(key)
    inside_arr.each {|same| return same[1] if same[0] == key}
    nil
  end

  def delete(key)
    val = get(key)
    inside_arr.reject! {|same| same[0] == key} #bang to mutatue!
    val
  end

  def show
    deep_dup(inside_arr)
  end

  private

  attr_reader :inside_arr

  def deep_dup
    arr.map do |el|
      if el.is_a?(Array)
        deep_dup(el)
      else
        el
      end
    end
  end
end
