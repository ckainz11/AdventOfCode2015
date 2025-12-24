~ "../util" ~ MeasureTime! ReadLines

ContainsThreeVowels  ← (> 2 /+ ∊ "aeiou")
ContainsDoubleLetter ← (≥ 1 /+≡(= ⊡1⤙⊡0)⧈∘ 2)
ContainsForbbiden    ← (˜∊ 1 ˜∊ ["ab" "cd" "pq" "xy"] ⧈∘ 2)

ContainsRepeatBetween ← (˜∊ 1 ≡(= ⊡0⤙⊡2)⧈∘ 3)
ContainsTwoPairs      ← (>0/+≡(>+1⊢⟜⊣)⬚(¯∞)⊕∘⟜(⇡⧻)⊛⧈∘ 2)

IsNiceString₁ ← = 3 + + ¬ContainsForbbiden⟜ContainsDoubleLetter⟜ContainsThreeVowels
IsNiceString₂ ← = 2 + ContainsTwoPairs⟜ContainsRepeatBetween

Part₁ ← /+ ≡(◇IsNiceString₁)
Part₂ ← /+ ≡(◇IsNiceString₂)

MeasureTime!Part₁ ReadLines "day5/day5.in"
MeasureTime!Part₂ ReadLines "day5/day5.in"

# Tests

# Part 1
˙⍤ = 2 Part₁ ReadLines "day5/day5_ex.in"

# ContainsTwoPairs
˙⍤ = 1 ContainsTwoPairs "xyxxy"
˙⍤ = 1 ContainsTwoPairs "aabcdefgaa"
˙⍤ = 0 ContainsTwoPairs "aaa"

# ContainsRepeatBetween
˙⍤ = 1 ContainsRepeatBetween "abcdefeghi"
˙⍤ = 1 ContainsRepeatBetween "xyx"
˙⍤ = 1 ContainsRepeatBetween "aaa"

# IsNiceString1
˙⍤ = 1 IsNiceString₁ "ugknbfddgicrmopn"
˙⍤ = 1 IsNiceString₁ "aaa"
˙⍤ = 0 IsNiceString₁ "jchzalrnumimnmhp"
˙⍤ = 0 IsNiceString₁ "haegwjzuvuyypxyu"
˙⍤ = 0 IsNiceString₁ "dvszwmarrgswjxmb"

# ContainsThreeVowels
˙⍤ = 1 ContainsThreeVowels "iou"
˙⍤ = 1 ContainsThreeVowels "aaa"
˙⍤ = 1 ContainsThreeVowels "xazegov"
˙⍤ = 1 ContainsThreeVowels "aeiouaeiouaeiou"
˙⍤ = 0 ContainsThreeVowels "aab"

# ContainsDoubleLetter
˙⍤ = 0 ContainsDoubleLetter "zgsnvdmlfuplrubt"
˙⍤ = 1 ContainsDoubleLetter "abxx"
˙⍤ = 1 ContainsDoubleLetter "yyabxx"
˙⍤ = 1 ContainsDoubleLetter "axxb"
˙⍤ = 1 ContainsDoubleLetter "aabbcc"
˙⍤ = 1 ContainsDoubleLetter "xxabc"
˙⍤ = 1 ContainsDoubleLetter "xx"
˙⍤ = 1 ContainsDoubleLetter "abcdde"
˙⍤ = 1 ContainsDoubleLetter "aabbccdd"
˙⍤ = 0 ContainsDoubleLetter "abc"
˙⍤ = 0 ContainsDoubleLetter "abcb"
˙⍤ = 0 ContainsDoubleLetter "asa"

# ContainsForbidden
˙⍤ = 1 ContainsForbbiden "ssabss"
˙⍤ = 1 ContainsForbbiden "absss"
˙⍤ = 1 ContainsForbbiden "sssab"

˙⍤ = 1 ContainsForbbiden "sscdss"
˙⍤ = 1 ContainsForbbiden "cdsss"
˙⍤ = 1 ContainsForbbiden "ssscd"

˙⍤ = 1 ContainsForbbiden "sspqss"
˙⍤ = 1 ContainsForbbiden "pqsss"
˙⍤ = 1 ContainsForbbiden "ssspq"

˙⍤ = 1 ContainsForbbiden "ssxyss"
˙⍤ = 1 ContainsForbbiden "xysss"
˙⍤ = 1 ContainsForbbiden "sssxy"

˙⍤ = 1 ContainsForbbiden "ssxysspq"
˙⍤ = 1 ContainsForbbiden "xysspq"
˙⍤ = 0 ContainsForbbiden "asbsxsy"
