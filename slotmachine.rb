class Slotmachine
    attr_reader :tiles

    def initialize(rows, columns)
        @symbols = '5'
        @tiles = []

        rows.times do
            column = []
            columns.times do
                column << Tile.new(rows)
            end

            @tiles << column
        end
    end


end