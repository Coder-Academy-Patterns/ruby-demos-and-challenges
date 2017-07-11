def window_width
  # Run 'tput cols' command
  `/usr/bin/env tput cols`.to_i
end

def window_height
  # Run 'tput lines' command
  # Minus 1 for prompt >
  `/usr/bin/env tput lines`.to_i - 1
end

class Pattern
  def make_tile
    [
      'For subclasses '
    ]
  end

  def to_s
    tile_lines = make_tile
    tile_width = tile_lines.first.length # Number of characters in first line
    tile_height = tile_lines.length # Number of lines
    repeat_x = window_width / tile_width
    repeat_y = window_height / tile_height
    out = []
    repeat_y.times do
      tile_lines.each do |line|
        out << (line * repeat_x)
      end
    end
    out.join("\n")
  end

  def display
    system 'clear'
    puts to_s
  end
end

class Pattern1 < Pattern
  def make_tile
    [
      '>!> >!> ',
      ' <-< <-<'
    ]
  end
end

class Pattern2 < Pattern
  def make_tile
    [
      '-^-_',
      '-_-^',
    ]
  end
end

class Pattern3 < Pattern
  def make_tile
    [
      '/ / + < > + ',
      ' / / + < > +',
      '+ / / + < > ',
      ' + / / + < >',
      '> + / / + < ',
      ' > + / / + <',
      '< > + / / + ',
      ' < > + / / +',
      '+ < > + / / ',
      ' + < > + / /',
      '/ + < > + / ',
      ' / + < > + /',
    ]
  end
end

class Pattern4 < Pattern
  def make_tile
    [
      'y o u :)  ',
      ' c a n    ',
      'd o  i t  ',
      '    ;)    ',
      '          '
    ]
  end
end

a = Pattern1.new
a.display
