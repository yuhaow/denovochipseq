FILE(REMOVE_RECURSE
  "CMakeFiles/test_file.dir/test_file.cpp.o"
  "../../../bin/test_file.pdb"
  "../../../bin/test_file"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang CXX)
  INCLUDE(CMakeFiles/test_file.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
