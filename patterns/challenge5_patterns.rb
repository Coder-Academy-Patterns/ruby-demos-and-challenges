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
  def initialize()
    @x_offset = 0
  end

  def make_tile
    [
      'For subclasses '
    ]
  end

  def process_tile_line(line)
    # Make sure offset is within the string
    offset = @x_offset % line.length
    line[offset+1..-1] + line[0..offset]
    #line
  end

  def to_s
    tile_lines = make_tile
    tile_width = tile_lines.first.length # Number of characters in first line
    tile_height = tile_lines.length # Number of lines
    repeat_x, remainder_x = window_width.divmod(tile_width)
    repeat_y, remainder_y = window_height.divmod(tile_height)
    out = []
    repeat_y.times do
      tile_lines.each do |line|
        line = process_tile_line(line)
        out << (line * repeat_x) + line[0, remainder_x]
      end
    end
    out.join("\n")
  end

  def display
    system 'clear'
    puts to_s
  end

  def display_animated
    loop do
      display
      @x_offset += 1
      sleep 0.2
    end
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

a = Pattern2.new
a.display_animated