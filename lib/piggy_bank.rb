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
            "cling" # why if we put puts "cling" it wouldn't work ?
        else 
            nil
        end 
    end 
end 
 