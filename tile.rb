class Tile
    attr_reader :value

    def initialize(rows)
        @value = random
    end

    def random
        rand(2)
    end
    
    def self.putser(slotmachine)
        clear

        slotmachine.tiles.each do |row|
            row.each do |column|
                print column.value
            end
            puts
        end
    end

    def self.check_winning(slots)
        slots.tiles.each do |row|

            arr = []
            row.each do |x|
                arr << x.value
            end

            if arr.uniq!.length == 1
                p "BINGO"
            else
                p "LOL"

            end
        end
    end

end