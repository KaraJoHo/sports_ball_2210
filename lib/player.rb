class Player 

  attr_reader :first_name, :last_name, :nickname, :monthly_cost, :contract_length
  def initialize(name, monthly_cost, contract_length)
    @monthly_cost = monthly_cost 
    @contract_length = contract_length
    @first_name = get_first_name(name)
    @last_name = get_last_name(name)
    @nickname = nil
  end

  def get_first_name(name)
    name.split(" ")[0]
  end

  def get_last_name(name)
    name.split(" ")[1]
  end

  def total_cost 
    @monthly_cost * @contract_length
  end
end