  class Stack
    def initialize
      # create ivar to store stack here!
      @array = []
    end

    def push(el)
      # adds an element to the stack
      @array << el
    end

    def pop
      # removes one element from the stack
      @array.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @array[-1]
    end

  end
# count = Stack.new()
# count.push(1)
# count.push(2)
# count.push(3)
# count.push(4)
# count.push(5)
# p count.peek
# p count.pop
# p count.peek

  class Queue
    def initialize
        @array = []
    end

    def enqueue(el)
        @array << el
    end

    def dequeue
        @array.shift
    end

    def peek
        p @array
    end
  end

# count = Queue.new()
# count.enqueue("harry")
# count.enqueue("kris")
# count.enqueue("joe")
# count.enqueue("kyle")
# count.enqueue("john")
# count.peek
# p count.dequeue
# count.peek

class Map

    def initialize
        @array = []
    end

    def set(key, value)

        if !@array.any? { |pair| pair[0] == key }
            @array << [key, value]
        else
            @array.map! do |pair|
                if pair[0] == key
                    pair = [key, value]
                end
            end
        end

    end

    def get(key)
        @array.each do |pair|
            if pair[0] == key 
                return pair[1]
            end
        end
        return nil
    end

    def delete(key)
        @array.reject! { |pair| pair[0] == key } 
        

    end

    def show
        @array
    end

end

scores = Map.new
scores.set("harris", 2)
scores.set("amy", 6)
scores.set("jason", 7)
scores.set("harris", 8)
scores.set("ryan", 9)






