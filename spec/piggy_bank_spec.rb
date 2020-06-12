require 'piggy_bank'
describe PiggyBank do
  describe 'initialize' do
    it 'can create an instance variable in piggy bank' do
      piggy_bank = PiggyBank.new 
      expect(piggy_bank).to be_an_instance_of PiggyBank
    end 
  end 
  describe'#add_coins' do
    it 'can add coins to my piggy bank' do 
      piggy_bank = PiggyBank.new
      piggy_bank.add_coins(5)
      expect(piggy_bank.coins).to eq(5)
    end 
  end 
  describe '#shake' do 
    it 'when piggy bank starts it has no coins in it so it does not cling' do
      piggy_bank = PiggyBank.new 
      expect(piggy_bank.coins).to eq(0)
      expect(piggy_bank.shake).to eq(nil)
    end 
    it 'when piggy bank has money in it, it will cling' do 
      piggy_bank = PiggyBank.new
      piggy_bank.add_coins(5)
      expect(piggy_bank.shake).to eq("cling")
    end 
  end 
end