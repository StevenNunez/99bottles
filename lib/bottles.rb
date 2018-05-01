class Bottles
  def verse(verse_iteration)
    case verse_iteration
    when 0
    <<-VERSE
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
    VERSE
    when 1
    <<-VERSE
1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
    VERSE
    when 2
    <<-VERSE
#{verse_iteration} bottles of beer on the wall, #{verse_iteration} bottles of beer.
Take one down and pass it around, #{verse_iteration - 1} bottle of beer on the wall.
VERSE
    else
    <<-VERSE
#{verse_iteration} bottles of beer on the wall, #{verse_iteration} bottles of beer.
Take one down and pass it around, #{verse_iteration - 1} bottles of beer on the wall.
VERSE
    end
  end

  def verses(start_iter, end_iter)
    start_iter.downto(end_iter).map do |vi|
      verse(vi)
    end.join("\n")
  end

  def song
    verses(99,0)
  end
end
