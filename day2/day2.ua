~ "../util.ua"
  ~ ReadLines Split

Parse ← ≡(≡⋕ Split "x" °□)

Area   ← (× 2 ⋅∘ ⊙+ ⊙+ ⊙× ⤙⊡ 1 ⤙⊡ 0 ⊙× ⤙⊡ 1 ⤙⊡ 2 ⊙× ⤙⊡ 2 ⤙⊡ 0) # 2*l*w + 2*w*h + 2*h*l
Slack  ← (/× ↙ 2 ⍆)
Volume ← (/×)

SmallestPerimeter ← (/+ ≡(×2) ↙ 2 ⍆)

Part₁ ← /+ + ≡Slack ⟜≡(Area) Parse
Part₂ ← /+ + ≡Volume⟜≡(SmallestPerimeter) Parse

Part₁ ReadLines "day2/day2.in"
Part₂ ReadLines "day2/day2.in"

⍤ "Test Part1.1: " = 58 Part₁ {"2x3x4"}
⍤ "Test Part1.2: " = 43 Part₁ {"1x1x10"}

⍤ "Test SmallestPerimeter [2 3 4] == 10: " = 10 SmallestPerimeter [2 3 4]
⍤ "Test SmallestPerimeter [1 1 10] == 4: " = 4 SmallestPerimeter [1 1 10]

⍤ "Test Volume [2 3 4] == 10: " = 24 Volume [2 3 4]
⍤ "Test Volumme [1 1 10] == 4: " = 10 Volume [1 1 10]
