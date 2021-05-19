class Node

  attr_accessor :value, :next_node, :prev_node

  def initialize(value, next_node = nil, prev_node = nil)
    @value = value
    @next_node = next_node
    @prev_node = prev_node
  end

end

class LinkedList

  def initialize
    @head = nil
  end

  def appendlist(value)
    tmp_node = Node.new(value)
    if @head.nil?
      @head = tmp_node
      @head.next_node = @head
      @head.prev_node = @head
      return
    end
    current_node = @head
    while current_node.next_node != @head
      current_node = current_node.next_node
    end
    current_node.next_node = tmp_node
    tmp_node.prev_node = current_node
    tmp_node.next_node = @head
    @head.prev_node = tmp_node
  end

  def prependlist(value)
    tmp_node = Node.new(value)
    if @head.nil?
      @head = tmp_node
      @head.next_node = @head
      @head.prev_node = @head
      return
    end
    current_node = @head
    current_node.prev_node.next_node = tmp_node
    tmp_node.prev_node = current_node.prev_node
    tmp_node.next_node = current_node
    current_node.prev_node = tmp_node
    @head = tmp_node
  end

  def addbeforelist(target, value)
    current_node = @head
    prependlist(value) if current_node.value == target
    while current_node.next_node != @head 
      if current_node.next_node.value == target
        tmp_node = Node.new(value)
        tmp_node.next_node = current_node.next_node
        current_node.next_node.prev_node = tmp_node
        current_node.next_node = tmp_node
        tmp_node.prev_node = current_node
        return
      end
      current_node = current_node.next_node
    end
  end

  def addafterlist(target, value)
    current_node = @head
    if current_node.prev_node.value == target
      appendlist(value)
      return
    end

    while current_node.next_node != @head 
      if current_node.value == target
        tmp_node = Node.new(value)
        tmp_node.next_node = current_node.next_node
        current_node.next_node.prev_node = tmp_node
        current_node.next_node = tmp_node
        tmp_node.prev_node = current_node
        return
      end
      current_node = current_node.next_node
    end
  end

  def sortlist
    current_node = @head
    cnt = 0
    while current_node.next_node != @head
      cnt += 1
      current_node = current_node.next_node
    end
    current_node = @head
    check = 0
    while current_node.next_node != @head
      if current_node.value > current_node.next_node.value
        tmp = current_node.value
        current_node.value = current_node.next_node.value
        current_node.next_node.value = tmp
        current_node = current_node.next_node
        next
      end
      check += 1
      current_node = current_node.next_node
    end
    sortlist if check != cnt
  end

  def removlist(value)
    current_node = @head
    if current_node.value == value
      tmp_node = current_node.next_node
      current_node = current_node.prev_node
      current_node.next_node = tmp_node
      tmp_node.prev_node = current_node
      @head = tmp_node
      return
    end
    while current_node.next_node != @head 
      if current_node.next_node.value == value
        tmp_node = current_node.next_node.next_node
        current_node.next_node = tmp_node
        tmp_node.prev_node = current_node
        next
      end
      current_node = current_node.next_node
    end
  end

  def frwdprintlist
    p '\n\n'
    current_node = @head
    while current_node.next_node != @head
      p current_node.value
      current_node = current_node.next_node
    end
    p current_node.value
  end

  def revprintlist
    p '\n\n'
    current_node = @head.prev_node
    while current_node.prev_node != @head
      p current_node.value
      current_node = current_node.prev_node
    end
    p current_node.value
    p @head.value
  end

end


class Checking

  list = LinkedList.new
  list.appendlist(12)
  list.appendlist(8)
  list.appendlist(98)
  list.appendlist(65)
  list.appendlist(12)
  list.appendlist(6)
  list.appendlist(6)
  list.appendlist(88)
  list.appendlist(8742)
  list.appendlist(57)
  list.appendlist(48)
  list.appendlist(4)
  list.frwdprintlist
  list.prependlist(1000)
  list.addafterlist(4, 888)
  list.addbeforelist(1000, 888)
  list.frwdprintlist
  list.addafterlist(65, 999)
  list.addbeforelist(8, 999)
  list.frwdprintlist
  list.sortlist
  list.removlist(888)
  list.removlist(4)
  list.frwdprintlist
  list.revprintlist
end 