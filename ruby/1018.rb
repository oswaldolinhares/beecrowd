class CashDispenser
  DENOMINATIONS = [100, 50, 20, 10, 5, 2, 1]

  def initialize(amount)
    @amount = amount
  end

  def dispense
    DENOMINATIONS.each do |denomination|
      count, @amount = @amount.divmod(denomination)
      display_notes(denomination, count)
    end
  end

  private

  def display_notes(denomination, count)
    formatted_denomination = 'R$ ' + denomination.to_s.gsub(/(?<=\d)(?=(\d{3})+(?!\d))/, '.')
    puts "#{count} nota(s) de #{formatted_denomination},00"
  end
end

amount = gets.to_i
puts amount
CashDispenser.new(amount).dispense
