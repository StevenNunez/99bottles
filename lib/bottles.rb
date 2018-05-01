class Bottles
  def remaining_containers(count)
    case count
    when 0
      "no more bottles of beer"
    when 1
      "1 bottle of beer"
    else
      "#{count} bottles of beer"
    end
  end

  def intro_sentence(count)
    "#{remaining_containers(count)} on the wall, #{remaining_containers(count)}.".capitalize
  end

  def instructions(count)
    case count
    when 0
      "Go to the store and buy some more"
    when 1
      "Take it down and pass it around"
    else
      "Take one down and pass it around"
    end
  end

  def verse(verse_iteration)
    result = intro_sentence(verse_iteration) + "\n#{instructions(verse_iteration)}, "
    case verse_iteration
    when 0
      result + "99 bottles of beer on the wall.
"
    when 1
      result + "no more bottles of beer on the wall.
"
    when 2
      result + "#{verse_iteration - 1} bottle of beer on the wall.
"
    else
      result + "#{verse_iteration - 1} bottles of beer on the wall.
"
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
