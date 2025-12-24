┌─╴Util ~ FormatTime ReadFile ReadLines Split
  Split     ← (⊜□ ⊸≠ ⊙)
  ReadFile  ← (&fras)
  ReadLines ← (Split "\n" ReadFile)

  GetMicroMilli ← ⍉⊟{"\u03BCs" "ms" "s"}⁅⊂⊂⊸×₁₀₀₀⊸×₁₀₀₀

  FilterTime ← ▽≥₁⊸≡(°□⊡₁)▽<₁₀₀₀⊸≡(°□⊡₁) GetMicroMilli
  FormatTime ← ⊃⋅∘∘ ↻₁⍣⊢ [□"> 1000s"] FilterTime
└─╴
ReadFile  ← Util~ReadFile
ReadLines ← Util~ReadLines

Split ← Util~Split

# Formats the specified seconds as either s, milli or micro
FormatTime   ← Util~FormatTime
MeasureTime! ← FormatTime⍜now^
