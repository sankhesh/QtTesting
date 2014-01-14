
# QT5_GENERATE_MOCS(inputfile1 [inputfile2 ...])

macro(QT5_GENERATE_MOCS)
  foreach(file ${ARGN})
    set(moc_file moc_${file})
    qt5_generate_moc(${file} ${moc_file})
    set_property(SOURCE ${file} APPEND PROPERTY
      OBJECT_DEPENDS ${CMAKE_CURRENT_BINARY_DIR}/${moc_file})
  endforeach()
endmacro()

