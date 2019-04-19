module ToyRobot
    class Robot
        def initialize(position = 0)
            @position = position
        end
        def move_east
            @position += 1
        end
        def move_west 
        @position -= 1
        end
        def position
            @position
        end
    end
end 