class Wallet < ApplicationRecord
   validates :name, presence:true, uniqueness:true

    def incomes
        @incomes = Income.where(:wallet_id=> self.id).order('created_at DESC')
    end

    def balance
        @balance = Income.where(:wallet_id => self.id).sum(:value)
    end
    
    
end
