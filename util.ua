┌─╴Util ~ FormatTime ReadFile ReadLines Split
  Split     ← (⊜□ ⊸≠ ⊙)
  ReadFile  ← (&fras)
  ReadLines ← (Split "\n" ReadFile)

  GetMicroMilli ← ⍉⊟{"\u03BCs" "ms" "s"}⊂⊂⊸×1000⊸×1000

  FilterTime ← ▽≥1⊸≡(°□⊡1)▽<1000⊸≡(°□⊡1) GetMicroMilli
  FormatTime ← ⊃⋅∘∘ ↻₁⍣⊢ [□"> 1000s"] FilterTime
└─╴
ReadFile  ← Util~ReadFile
ReadLines ← Util~ReadLines

Split ← Util~Split

# Formats the specified seconds as either s, milli or micro
FormatTime ← Util~FormatTime
