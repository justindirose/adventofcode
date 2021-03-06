input = DATA.readlines.map { |m| m.gsub!("\n", "") }

xy_map = [
  [1, 1],
  [3, 1],
  [5, 1],
  [7, 1],
  [1, 2]
]
max_x = input[0].length

trees_total = []

xy_map.each do |slope|

  x, y = slope[0], slope[1]
  r, d = slope[0], slope[1]

  trees = 0

  while y < input.length
    trees +=1 if input[y][x] == '#'

    y += d
    x += r

    if x >= max_x
      x = 0 + (x - max_x)
    end
  end

  trees_total << trees

end

puts trees_total.inject(:*)

__END__
.........#..##.##..............
#...#.#..#.....................
.#...#..#...................#..
........##..#...#..............
.#.#.....#..#..##......#.......
....#..#...#..##........#..##..
...#....##........#.......#.#..
....#................#...###..#
...#...#.#..#....#.......####.#
.....#...#..........#...#..#.#.
....#..#............#.#.#.#..#.
..#....#.###..#............#...
.....#.............#.#.........
.#.##............##.........#..
...##...#..#....#.##..#.....#..
..............#.#.........#.##.
...........#.....##....##......
.......#............#...#......
............#.#....#....#..#..#
....#................####......
...#.........................##
..........#........#.#.........
....#.#....#...........#......#
..#.#..##......##..##..#..#.#..
...#.....##......#.#.#.........
.........#.#....#...#.#.#......
.......#.......###.#.......#...
..#............##..#.......#...
...#....#......#...#...#...#...
......#..#.#.....##......#.....
...........##...##...#....#.##.
#.##..#.....##..#.#............
.#.#.....##......#.##........#.
..#...#...#...#..........#...##
...##.........................#
.....#......#.....##....#.....#
..#........#...................
#......#..#.#..#..#.#..#...#...
...............#..........#....
.....#...........#......#....#.
........#..#...............#...
.........#...#.......#.#..#...#
..#..#......#.##..........#....
.#...#....#.....#.............#
.##.....#.........#......#..#..
........#..##.......#......#...
.......#.....###......#..#.....
.......#.#.......#.............
...#................##.#.......
..##..#...#.#...#.#..#.#.#.##..
.......#.#............#...#....
#...#.....#......#..........##.
.#.......#......#.......#.#.#..
.#.##.#.#...........#..........
.......#.....#....#.#.##......#
.###..#...#.............##.....
......#......#.................
##...#.#...##...#.#.....#....#.
#.............#....##...#....#.
#.#...#....#........#.###..##..
......#.........#......#.#.#.#.
..#.#.#.....#........#..#...#..
#.##....#.#......#...........#.
.#.#.####.........#..#.##....##
......##...............#......#
.......#.........#........#.#..
....#....#..#.##.........#..#..
.#..........#.##....#.#..#.....
#..#.#............#..#....#.#.#
..................#..#.........
##..##.#....#.................#
..................#........#..#
.....#.........#.......##......
.....................#.#..#...#
.....#.........#..........#.#..
...#.#..#..#.#.#.......#.......
.....#.....#.#.........#.....##
.............##....#....##.#...
.#......#........##..#...###...
........#.......##.##.#......#.
..#....................#.##..#.
......#.......#..#....##.#.....
...#....#.......##...#.......#.
.#.#..#.#..........##..........
....#.......##...........#.....
###....#.......#..#...#.....##.
...#......#.........#..#.#..#.#
#.........#..##.#..............
.#.....#..##.#..#..###.....##.#
..........#..#....##.......#...
.#..#.#...#...##.#..#.##.#.....
#....#...#........#......##....
..#.####....#.#........#....#..
#......#............#.#........
...#..#.......##...........#...
.........#..#.#..#.###.#...#..#
..#....##.......#.............#
............#..#......#........
........#......#..............#
..#.#.#...........#............
...........#......##.#.#.......
.#..........#...........#..#...
.....#...#..#.........##...#...
.......#....##....#.#.........#
..#.#......#.......#...##.#....
.....#..........#........#.....
#.......#.......#............#.
..##.#.....#.##.#.#.#..#.......
..#...#.......#.###............
.#...#..#....#...#...#..#....##
.....#.....#...................
.......................#......#
......#...##.........#...#..#..
.....#..#.....#..............#.
.#.##..#..#....................
....#..#...#....#.............#
..###..#...#......#.....#......
..#......###....#.....#.....###
...#.##..#...#.....#........#..
.#.#...........##....#...#.##..
.......#...##......#..#..#.....
#.............#..#...##.#..#..#
..........#......#.......#.....
...............#.#.#....#...#..
#.......#.#..#.....#........#..
.#.#.#.......#..#.........##...
......#.....#.#....#...........
..#.....##.#........##.#......#
...###...#..#.........#........
....#...................#..#...
.##........#...................
....#..#...........#.#.........
.....#.......#...#....#.#......
.........#...#.......#.#...#...
.......#.#..#....#....#.......#
..#.............#..............
.#...#..#.#.#..#............#..
...#.##.##..#..#...........##..
...........#...#..#.#........#.
....#...#.....#...#.#....#...#.
.......#.#...##..#.............
.......................#....#..
..#..#.....#...........#....#..
.#..#...#.##........##....#....
#.....##.#.#.......#.....#...#.
.#....#.......................#
#..##..###...#.........#.......
..##...#...#..........#....#...
......#..##......##.#.........#
................#........#..#..
.....#.#..#.....#.......#..#...
..#..#.....#.......#..#..#...#.
.#....#...#...#......##.....#..
....#........#...#......##....#
..#..........##......#......#..
#.#.....#.....#.......#........
...#...#......#....##.#..#...##
...#....#...#.#...........##...
#....##...#...#....#...........
...#.#..#...#..............##..
#..#..........##.#.#.....#.....
..#...#.........#.#..........#.
....#.....#..........#.........
........................#......
.#.....#.#...###...#....#......
....##....#....#..#.##........#
..#........#.........#.......#.
.....#.#......#...#...#........
........#..#.....#....###....#.
...........#..#.#....#.#....##.
.......#.....##.#............#.
...............#........##.##..
.............#...##......#...#.
#...##.#.......#......###.....#
..........#...#........#..#....
....#....................#...#.
.#......#...#.......#....#.#...
....#.......................#..
#...#...#...#.##....##.........
..........#.#...##.#...#.......
..#...............#....#..#...#
#..#..#...#..#.........#...#...
.....#..#..........#.##.#..##..
........#......##.....#........
.#....#.#.........#...#..#.#...
....#..............##..........
#...............#..............
..###.........#....##.........#
.........#.#....##........#...#
....#.#..#......#...#..........
...#.#.....#....#..#....#.#..#.
............#..#.....#...##....
...........#....#.#.#...#......
#...............#....###.......
.........#.....##.#..#..#......
...#...##...###...............#
.#......#.#.#.................#
.........##..#............#....
..#..#.....#.....#.#...........
.#......##............#.#....#.
.#.##..##.##..#.........#.....#
...##.##......##.##......#.....
##.....#.#...#...#...#..#......
....................#......#...
.....#.................#...###.
...........#..#.........#.#....
...#........#..#........#....#.
#................#......###...#
.............##.#.....#.#......
...#...#.##..#........##.......
#..#.##...#....#.#.............
.#.........#.#..#...........#..
....#...#.....#.#..........#...
.#.#....###.......##.....#.##..
.##....##......#......#.#....#.
..#...#.#........#...#..##.....
..............###..........##..
#....#..##.....#.....#.....#...
...#...#....................#..
.#....#.#.....#.#..#..##.......
#...##..###......#.............
..........#.#....##.#........##
..#..#.....#...#....#.#.#......
#.....#........#..##.#.........
....#.....#..........##......#.
......#..#.....#........#.....#
.....#..#....#...........#.##..
.#....................#....#..#
........#..#...........#.......
#....#.#.......#........#.#..#.
........#.....#...#............
..#........#........#....#...#.
.....##.......#..#..........#..
......#.#......###...#....##..#
.#..#.............#.#..........
#.....##.#.#.#.#.#.....#.....#.
.#..#.....#.......#.#.....#....
###....##...#.#...#..#......###
.#................#.....#.##...
....##....#.#........###.#.#...
#.#....#........#.....#.......#
..........#..........#.##...#..
....#....#..##......#..#.......
.....#..........#.##...........
##......#.#......#.##..........
##..........##.......##........
..#.....#....#.##..#..#..#.....
......###...#...........#...###
#..#.............##............
...#.###.....#..#.........#.#..
......#...............#...#.#..
.....#...##.#...#.....#.#..#...
..#..#.#....#.#................
...............##.....#........
......#.#.....#...#.........#..
........#..#...#.#...#......#..
#...........#.......#...##...#.
........#.#...#..##..#.#...#...
..#....#...#......#..........##
..#..............##...##.#.....
...#....#..#....##.........#.#.
.#.#....#..........#.......#...
...##....#.#....#....#.#...#...
..............#..##........#..#
..........#.#...##......#..#.#.
#...##..#......................
.......#........##.#.#.#.......
.........##..#.#.......####....
..#.............#..#........##.
##..#..#...#....#.....#...#..#.
..#.#...#.#.....#..............
..#....#....#..##...#.#........
##.....#..#...#................
#....#.....................#...
..............###.....#.#.#....
..#......##.#....#.#...##......
#...#.#......#...#.#......#....
....#...................##.#...
.........##......#.....#.####..
##..#........#.....#......##..#
...#..#...#...#.............#..
#..#..#.#......###...#.........
.......#.#..#........#....##..#
............#..##.....#.#.#....
#..#.....#.....#....##........#
......#..........##............
.....#...#...........#.........
...........#....#...#....#.#...
....#.........##.##.......#....
......#....#...........#.##...#
.##.#.#..##...#.....##.#...#...
.......#.#....#...#...#....#...
.#...##.#.#.....#..#....#......
.#....###..#.......#......#...#
..#.#.........#.........#.....#
.......#.#.##..#.#.......##..#.
.##............#.........#....#
.#...##.###..#........##.#..#..
..#........#.#.....##..##.#....
...........#...........#.....#.
.#...######..##...#.....#......
.#.##.#.......#......#......#..
.#.....#.....#........#........
...#..#...#.##...#...........#.
.......#.....#.......#.........
............#...###...........#
...#.......#.......##....#..#..
##.......#....#....####........
.......#.#......#..........#..#
#.....##..#..#.....#....#...#..
#............#........##.......
.#.#...#.............#..##.....
.#....#..#.#......#.##.......##
...................##...##..###
..#.....#...#................#.
..#...#....#...#.#.#...#.....#.
.....#............#....#...#..#
.#.....#....#..#......#.#.....#
............#.#.....####.##....
....#......###....#...#....#...
#.....#..#.....#..#...#.......#
..#.#...#....#....##..#...##...
.##..#..#..##....##...#........
