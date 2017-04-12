class Lotto
  def pick
    @draw = (1...45).to_a.sample(6).sort
    @win = (1...45).to_a.sample(6).sort
    puts "my card: #{@draw}"
    puts "L num : #{@win}"
  end
  
  def check
    @tmp = 0
    @win.each do |a| 
      @draw.each do |b|
        if a==b
          @tmp = @tmp + 1
        else 
          nil
        end
      end
    end
    
    if @tmp != 0
      puts "맞춘 갯수: #{@tmp}"
    elsif @tmp == 6
      puts "맞춘 갯수: #{@tmp}"
      puts "로또 당첨!"
    else
      puts "꽝~"
    end
  end
end
    

a = Lotto.new()
a.pick
a.check
