~ "../util.ua"
  ~ FormatTime ReadFile

# convert one of {>, <, v, ^} to a cardinal direction represented as a complex number
DirToComplex ← (
  ⊙ℂ⟜0⤙=@>
  ⊙ℂ⟜0⤙(¯=)@<
  ⊙˜ℂ⟜0⤙=@^
  ˜ℂ0(¯=)@v
  +++
)

⍤ "Test DirToComplex: right >" = ℂ 0 1 DirToComplex @>
⍤ "Test DirToComplex: left <" = ℂ 0 ¯ 1 DirToComplex @<
⍤ "Test DirToComplex: up ^" = ℂ 1 0 DirToComplex @^
⍤ "Test DirToComplex: down v" = ℂ ¯ 1 0 DirToComplex @v

Parse ← (⊂ ℂ 0 0 ≡DirToComplex)
Part₁ ← (⊢ △ ◴ \+ Parse)

EvenIndices ← (× 2 ⇡ ⌈ ÷ 2 ⊢ △)
OddIndices  ← (+ 1× 2⇡ ⌊ ÷ 2 ⊢ △)

Part₂ ← ⊢ △ ◴ ⊂ ∩(\+) ⊏ ⊸OddIndices ⤙⊏ ⊸EvenIndices Parse

⍤ "Test Part 1.1" = 2 Part₁ ">"
⍤ "Test Part 1.2" = 4 Part₁ "^>v<"
⍤ "Test Part 1.3" = 2 Part₁ "^v^v^v^v^v"

⍤ "Test Part 2.1" = 3 Part₂ "^v"
⍤ "Test Part 2.2" = 3 Part₂ "^>v<"
⍤ "Test Part 2.3" = 11 Part₂ "^v^v^v^v^v"

FormatTime ⍜nowPart₁ ReadFile "day3/day3.in"
FormatTime ⍜nowPart₂ ReadFile "day3/day3.in"
