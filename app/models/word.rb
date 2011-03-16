class Word < ActiveRecord::Base
  
  def value=(word)
    
    points = { "a" => 1, "b" => 3, "c" => 3, "d" => 2, "e" => 1, "f" => 4, "g" => 2, "h" => 4,
      "i" => 1, "j" => 8, "k" => 5, "l" => 1, "m" => 3, "n" => 1, "o" => 1, "p" => 3, "q" => 10,
      "r" => 1, "s" => 1, "t" => 1, "u" => 1, "v" => 4, "w" => 4, "x" => 8, "y" => 4, "z" => 10 }
    
    lower = word.downcase
    letters = count_letters(word)
    
    score = 0
    
    letters.each_pair do |letter,count|
      
      if (points[letter.chr])
        score = score + (points[letter.chr] * count)
      end
      
      case letter.chr
      when "a"
        write_attribute(:a, count)
      when "b"
        write_attribute(:b, count)
      when "c"
        write_attribute(:c, count)
      when "d"
        write_attribute(:d, count)
      when "e"
        write_attribute(:e, count)
      when "f"
        write_attribute(:f, count)
      when "g"
        write_attribute(:g, count)
      when "h"
        write_attribute(:h, count)
      when "i"
        write_attribute(:i, count)
      when "j"
        write_attribute(:j, count)
      when "k"
        write_attribute(:k, count)
      when "l"
        write_attribute(:l, count)
      when "m"
        write_attribute(:m, count)
      when "n"
        write_attribute(:n, count)
      when "o"
        write_attribute(:o, count)
      when "p"
        write_attribute(:p, count)
      when "q"
        write_attribute(:q, count)
      when "r"
        write_attribute(:r, count)
      when "s"
        write_attribute(:s, count)
      when "t"
        write_attribute(:t, count)
      when "u"
        write_attribute(:u, count)
      when "v"
        write_attribute(:v, count)
      when "w"
        write_attribute(:w, count)
      when "x"
        write_attribute(:x, count)
      when "y"
        write_attribute(:y, count)
      when "z"
        write_attribute(:z, count)
      else
      end
    end
    
    write_attribute(:score, score)
    write_attribute(:value, word)
  end
  
  def count_letters(word)
    letters = Hash.new
    word.each_byte do |c|
      if letters[c]
        letters[c] = letters[c] += 1
      else
        letters[c] = 1
      end
    end
    letters
  end
  
  def self.find_anagrams(query)
    if (!query)
      return {}
    end
    
    word = Word.new
    word.value = query;
    
    find_by_sql( "select value, score
                  from words
                  where 
                    a <= '#{word.a}' and
                    b <= '#{word.b}' and
                    c <= '#{word.c}' and
                    d <= '#{word.d}' and
                    e <= '#{word.e}' and
                    f <= '#{word.f}' and
                    g <= '#{word.g}' and
                    h <= '#{word.h}' and
                    i <= '#{word.i}' and
                    j <= '#{word.j}' and
                    k <= '#{word.k}' and
                    l <= '#{word.l}' and
                    m <= '#{word.m}' and
                    n <= '#{word.n}' and
                    o <= '#{word.o}' and
                    p <= '#{word.p}' and
                    q <= '#{word.q}' and
                    r <= '#{word.r}' and
                    s <= '#{word.s}' and
                    t <= '#{word.t}' and
                    u <= '#{word.u}' and
                    v <= '#{word.v}' and
                    w <= '#{word.w}' and
                    x <= '#{word.x}' and
                    y <= '#{word.y}' and
                    z <= '#{word.z}' order by score DESC")
  end
end