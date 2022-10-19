
class Player

  attr_reader :first_name,
              :last_name,
              :monthly_cost,
              :contract_length,
              :total_cost,
              :name,
              :nickname

  def initialize(name, monthly_cost, contract_length)
    @name = name
    @monthly_cost = monthly_cost
    @contract_length = contract_length
    @first_name = @name.split.first
    @last_name = @name.split.last
    @total_cost = @monthly_cost * @contract_length
    @nickname = nil
  end

  def set_nickname!(nick_name)
    @nickname = nick_name
  end

end
