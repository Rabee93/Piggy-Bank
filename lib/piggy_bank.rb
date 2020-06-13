class PiggyBank
    
    attr_reader :coins
    def initialize
        @coins = 0
    end 
    
    def add_coins(amount)
        @coins += amount
    end 
    
    def shake
        if @coins > 0
            "cling" # why if we put puts "cling" it wouldn't work ? the test is to return not to print something on the screen thatere's a different test for puts
        else 
            nil
        end 
    end 
    def breaks
        @coins
    end 
end 

 