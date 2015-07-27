FILE(REMOVE_RECURSE
  "CMakeFiles/sak_doc"
  "README.sak.txt"
  "sak.1"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/sak_doc.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
