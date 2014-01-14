
# QT5_GENERATE_MOCS(inputfile1 [inputfile2 ...])

macro(QT5_GENERATE_MOCS)
  foreach(file ${ARGN})
    set(moc_file moc_${file})
    QT5_GENERATE_MOC(${file} ${moc_file})
    macro_add_file_dependencies(${file} ${CMAKE_CURRENT_BINARY_DIR}/${moc_file})
  endforeach()
endmacro()

