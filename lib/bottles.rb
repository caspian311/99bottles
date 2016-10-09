
class Bottles
  def song
    verses 99, 0
  end

  def verses(start, stop)
    start.downto(stop).map{|v| verse v }.join "\n"
  end

  def verse(bottles)
    <<-VERSE
#{first_line(bottles)}
#{second_line(bottles)}
VERSE
  end

  private

  def first_line(bottles)
    "#{items(bottles).capitalize} of beer on the wall, #{items(bottles)} of beer."
  end

  def second_line(bottles)
    if bottles > 0
      prefix = "Take #{bottles == 1 ? 'it' : 'one'} down and pass it around"
      bottles = bottles - 1
    else
      prefix = "Go to the store and buy some more" 
      bottles = 99
    end

    "#{prefix}, #{items(bottles)} of beer on the wall."
  end

  def items(bottles)
    bottles == 0 ? 'no more bottles' : "#{bottles} #{units(bottles)}"
  end

  def units(bottles)
    bottles > 1 ? 'bottles' : 'bottle'
  end
end
