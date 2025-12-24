~ "../util" ~ MeasureTime! ReadFile
Parse ← (\+ -1×2 =@()
Part₁ ← (⊣ Parse)
Part₂ ← (+1⊢⊚=¯1 Parse)

⍤ "Test Part 1.1" = 0 Part₁ "(())"
⍤ "Test Part 1.2" = 0 Part₁ "()()"
⍤ "Test Part 1.3" = 3 Part₁ "((("
⍤ "Test Part 1.4" = 3 Part₁ "(()(()("
⍤ "Test Part 1.5" = 3 Part₁ "))((((("
⍤ "Test Part 1.6" = ¯1 Part₁ "())"
⍤ "Test Part 1.6" = ¯1 Part₁ "))("
⍤ "Test Part 1.7" = ¯3 Part₁ ")())())"

⍤ "Test Part 2.1" = 1 Part₂ ")"
⍤ "Test Part 2.2" = 5 Part₂ "()())"

MeasureTime!Part₁ &fras "day1/day1.in"
MeasureTime!Part₂ &fras "day1/day1.in"

˙⍤ = 232 Part₁ &fras "day1/day1.in"
˙⍤ = 1783 Part₂ &fras "day1/day1.in"
