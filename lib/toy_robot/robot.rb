module ToyRobot
  class Robot
    DIRECTIONS = ["NORTH", "EAST", "SOUTH", "WEST"]
    attr_reader :x, :y, :direction

      def initialize(x = 0, y =0, direction = "NORTH")
        @x =x
        @y= y
        @direction = direction
      end

      def move_east
        @x += 1
      end

      def move_west 
        @x -= 1
      end

      def move_north
        @y += 1
      end

      def move_south
        @y -= 1
      end

      def move
        case @direction
          when "NORTH" then move_north 
          when "SOUTH" then move_south 
          when "EAST" then move_east
          when "WEST" then move_west
        end
      end

      def next_move 
        case @direction 
          when "NORTH" 
            [@x, @y + 1] 
          when "SOUTH" 
            [@x, @y - 1] 
          when "EAST" 
            [@x + 1, @y] 
          when "WEST" 
            [@x - 1, @y] 
        end
      end

      def turn_left 
        turn(:left)
      end

      def turn_right
        turn(:right)
      end

      def report
        {
          y: y,
          x: x,
          direction: direction
        }
      end
      
      private
      def turn(turn_direction)
      index = DIRECTIONS.index(@direction)
      rotations = turn_direction == :right ? 1 : -1 
      @direction = DIRECTIONS.rotate(rotations)[index]
      end


    end
end 