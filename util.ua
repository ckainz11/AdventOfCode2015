┌─╴Util ~ ReadFile ReadLines Split
  Split     ← (⊜□ ⊸≠ ⊙)
  ReadFile  ← (&fras)
  ReadLines ← (Split "\n" ReadFile)
└─╴
ReadFile  ← Util~ReadFile
ReadLines ← Util~ReadLines
Split     ← Util~Split
