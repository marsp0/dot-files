set style address foreground white
set style address intensity dim
set print pretty on
layout src
focus cmd

define hook-run
  source breakpoints
  source display_variables
end

define hook-quit
printf "Saving all breakpoints\n"
save breakpoints breakpoints
python
with open("./display_variables", "w") as f:
    for d in gdb.execute("info display", to_string=True).splitlines():
        parts = d.strip().split(None, 2)
        if len(parts) >= 3 and parts[0].rstrip(':').isdigit():
            expr = parts[2]
            f.write(f"display {expr}\n")
end
end
