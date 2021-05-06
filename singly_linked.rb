class Node
    attr_accessor :value, :next_node
    def initialize (value,next_node = nil)
        @value = value
        @next_node = next_node
    end
end

class LinkedList
    def initialize
        @head = nil
    end
    def append_list(value)
        if @head.nil?
            @head = Node.new(value)
            return
        end
        current_node =  @head
        while current_node.next_node != nil
            current_node = current_node.next_node
        end
        current_node.next_node = Node.new(value)
    end
    def prepend_list(value)
        newhead = Node.new(value)
        newhead.next_node = @head
        @head = newhead
    end
    def addafter_list(target,value)
        current_node = @head
        while current_node.next_node != nil
            if current_node.value == target
                puts "if #{current_node.value}"
                current_node = current_node.next_node
                puts "if #{current_node.value}"
                nextnode = current_node
                puts "nxt#{nextnode}"
                current_node = Node.new(value)
                puts "if #{current_node.value}"
                current_node.next_node = nextnode
                puts "if #{current_node.value}"
                next
            end
            current_node = current_node.next_node
        end
    end
    def print_list()
        current_node = @head
        while current_node.next_node != nil
            puts current_node.value
            current_node = current_node.next_node
        end
    end
end

class Exper
    list = LinkedList.new
    list.append_list(98)
    list.append_list(2)
    list.append_list(5)
    list.append_list(-78)
    list.addafter_list(5,45)
    list.prepend_list(1000)
    list.append_list(8)
    list.append_list(2)
    list.append_list(54)
    list.print_list()
end