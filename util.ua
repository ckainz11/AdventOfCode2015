┌─╴Util ~ ReadFile ReadLines RunTime Split
  Split     ← (⊜□ ⊸≠ ⊙)
  ReadFile  ← (&fras)
  ReadLines ← (Split "\n" ReadFile)

  RunTimeInS ← (⍜now)

  GetPicoNanoMicroMilli ← ⍉⊟{"\u03BCs" "ms" "s"}⊂⊂⊸×1000⊸×1000

  FormatTime ← ▽≥1⊸≡(°□⊡1)▽<1000⊸≡(°□⊡1) GetPicoNanoMicroMilli

  # Appends the runtime of a function after the output of the function
  RunTime ← ⊃⋅∘∘ ↻₁⍣⊢ [□"< 1\u03BCs"] FormatTime RunTimeInS
└─╴
ReadFile  ← Util~ReadFile
ReadLines ← Util~ReadLines

Split ← Util~Split

# Appends the runtime of a function after the output of the function
RunTime ← Util~RunTime
