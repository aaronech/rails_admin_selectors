class ProductBase < ActiveRecord::Base
  self.table_name = 'products'
  before_save :add_selector

  def add_selector
    quan = quantity.split('|')
    new_quan = quan.map do |q|
      q = q.to_i
      if q >= 1 && q <= 3
        rand(10..15)
      elsif q >= 4 && q <= 6
        rand(15..20)
      elsif q >= 7 && q < 10
        rand(20..25)
      elsif q >= 10 && q < 30
        rand(2..5)
      elsif q >= 30 && q < 40
        rand(4..10)
      else
        q
      end
    end
    self.quantity = new_quan.join('|')
  end

end