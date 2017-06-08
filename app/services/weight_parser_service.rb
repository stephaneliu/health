class WeightParserService
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def parse
    OpenStruct.new(date: parse_date, weight: parse_weight, bmi: parse_bmi)
  end

  private

  def parse_date
    Date.strptime(date_line.split(': ').last.split(' at').first, '%b %e, %Y')
  end

  def date_line
    lines[0]
  end

  def parse_weight
    weight_line.split(': ').last.to_f
  end

  def weight_line
    lines[1]
  end

  def parse_bmi
    bmi_line.split(': ').last.to_f
  end

  def bmi_line
    lines[2]
  end

  def lines
    text.each_line.to_a
  end
end
