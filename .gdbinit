set style address foreground white
set style address intensity dim
layout src
focus cmd

define hook-run
  source breakpoints
end

define hook-quit
  printf "Saving all breakpoints\n"
  save breakpoints breakpoints
end
