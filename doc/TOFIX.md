# TOFIX

Findings from a code scan on 2026-10-04.

## Medium

- `rsconstruct.toml:1` - no processor checks the ten `src/**/*.rb` files; only TOML, workflows and README are linted. rsconstruct has no Ruby linter, so add a `script` checker instance over `src_dirs = ["src"]`, `src_extensions = [".rb"]` running `ruby -wc` (all files pass today), or add Ruby support to rsconstruct.
- `src/filesystem/count_lines_in_file.rb:14` - `File.open(...).each` never closes the file handle, and `text` (lines 12, 16) is accumulated but never used. Use `File.foreach('/etc/passwd') { line_count += 1 }` (or `File.open(...) do |f| ... end`) and drop `text`; lines 12 and 14-16 also carry trailing whitespace.

## Low

- `src/simple/hello.rb:1` - byte-identical to `src/core/hello_world.rb`; delete one of them (and the then-empty `src/simple/` folder).
- `src/arrays/making.rb:12` and `src/functional_programming/map.rb:3` - typo "funtional" -> "functional"; `src/terminal/colors256.rb:27` "foregroud", `:31` "seperate".
- `src/arrays/making.rb:15` - "with a size" repeats `Array.new(5)` from line 11 verbatim; remove the duplicate example.
