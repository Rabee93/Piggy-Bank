require 'piggy_bank'
describe PiggyBank do
  
  let(:piggy_bank) {PiggyBank.new}
  
  describe 'initialize' do
    it 'can create an instance variable in piggy bank' do
      expect(piggy_bank).to be_an_instance_of PiggyBank
    end 
    it 'initializes coins to zero' do
      expect(piggy_bank.coins).to eq(0)
    end 
  end 
  describe '#add_coins' do
    it 'can add coins to my piggy bank' do 
      piggy_bank.add_coins(5)
      expect(piggy_bank.coins).to eq(5) 
    end 
    it 'does not add coins if there are no coins' do
      piggy_bank.add_coins(0)
      expect(piggy_bank.coins).to eq(0)
    end 
    it 'adds coins to existing coins in the piggy bank' do
      piggy_bank.add_coins(7)
      piggy_bank.add_coins(4)
      expect(piggy_bank.coins).to eq(11)
    end
  end 
  describe '#shake' do 
    it 'when piggy bank starts it has no coins in it so it does not cling' do
      expect(piggy_bank.coins).to eq(0) #what would happen if we wrote piggy_bank.add_coins(0) instead
      expect(piggy_bank.shake).to eq(nil)
    end 
    it 'when piggy bank has money in it, it will cling' do 
      piggy_bank.add_coins(10)# recommended to use a different number.
      expect(piggy_bank.shake).to eq("cling")# we only use eq with expect.
    end 
  end 
  describe '#breaks' do
    it 'if piggy bank was empty, it will not show coins when it breaks' do 
      expect(piggy_bank.breaks).to eq(0)
    end
    it 'if piggy bank had coins, it will show the number of coins' do
     piggy_bank.add_coins(3)
     expect(piggy_bank.breaks).to eq(piggy_bank.coins)
    end 
  end
end 
    