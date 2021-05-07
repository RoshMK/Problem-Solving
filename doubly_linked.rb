class Node
  
  attr_accessor :value, :previous_node, :next_node

  def initialize(value, previous_node = nil, next_node = nil)
    @value =value
    @previous_node = previous_node
    @next_node = next_node
  end

end

class LinkedList

  def initialize
    @head = nil
    @tail = nil
  end

  def appending(value)
    current_node = Node.new(value)
    current_node.next_node = nil
    current_node.previous_node = @tail
    if @tail.nil?
      @head = current_node
    else
      @tail.next_node = current_node
    end
    @tail = current_node
  end

  def prepending(value)
    current_node = Node.new(value)
    current_node.next_node = @head
    current_node.previous_node = nil
    if @head.nil?
      @tail = current_node
    else
      @head.previous_node = current_node
    end
    @head = current_node
  end

  def add_before(target, value)
    tmp_node = Node.new(value)
    current_node = @head
    prepending(value) if current_node.value == target
    while !current_node.next_node.nil?
      if current_node.next_node.value == target
        nxt_node = current_node.next_node
        nxt_node.previous_node = tmp_node
        tmp_node.next_node = nxt_node
        current_node.next_node = tmp_node
        tmp_node.previous_node = current_node
        current_node = tmp_node.next_node
        next
      end
      current_node = current_node.next_node
    end
  end

  def add_after(target, value)
    tmp_node = Node.new(value)
    current_node = @tail
    appending(value) if current_node.value == target
    while !current_node.previous_node.nil?
      if current_node.previous_node.value == target
        prv_node = current_node.previous_node
        prv_node.next_node = tmp_node
        tmp_node.previous_node = prv_node
        current_node.previous_node = tmp_node
        tmp_node.next_node = current_node
        current_node = tmp_node.previous_node
        next
      end
      current_node = current_node.previous_node
    end
  end

  def removing(value)
    current_node = @head
    if current_node.value == value
      return @head = current_node.next_node
    end
    while !current_node.next_node.nil?
      if current_node.next_node.value == value
        @tail = current_node if current_node.next_node.next_node.nil?
        nxt_node = current_node.next_node.next_node
        current_node.next_node = nxt_node
        nxt_node.previous_node = current_node
      end
      current_node = current_node.next_node
    end
  end

  def sorting
    current_node = @head
    cnt = 0
    while (current_node = current_node.next_node)
      cnt += 1
    end
    current_node = @head
    check = 0
    while !current_node.next_node.nil?
      if current_node.value > current_node.next_node.value
        tmp = current_node.value
        current_node.value = current_node.next_node.value
        current_node.next_node.value = tmp
      else
        check += 1
      end
      current_node = current_node.next_node
    end
    sorting if cnt != check
  end

  def frwdprinting
    p "\n\n"
    current_node = @head
    p current_node.value
    while (current_node = current_node.next_node)
      p current_node.value
    end
  end

  def revprinting
    p "\n\n"
    current_node = @tail
    p current_node.value
    while (current_node = current_node.previous_node)
      p current_node.value
    end
  end

end

class Trails

  list = LinkedList.new
  list.appending(12)
  list.appending(8)
  list.appending(98)
  list.appending(65)
  list.appending(12)
  list.appending(6)
  list.appending(88)
  list.appending(8742)
  list.appending(57)
  list.appending(48)
  list.appending(4)
  list.frwdprinting
  list.prepending(1000)
  list.add_after(4, 888)
  list.add_before(1000, 888)
  list.add_after(65, 999)
  list.add_before(8, 999)
  list.frwdprinting
  list.sorting
  list.removing(48)
  list.frwdprinting
  list.revprinting
end