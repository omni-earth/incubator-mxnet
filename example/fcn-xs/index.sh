awk -F'\t' -v OFS='\t' '
  NR == 1 {$0; next}
  {print (NR-1), $0}
' evp/train.lst > evp/train_index.lst
