
#include "oordb.ch"

/*
    just a base table class for whole app tables
*/
CLASS MyTableBase INHERIT TTable

   DEFINE DATABASE WITH MyDataBase CLASS

   /* enabling following line will create mem: tables */
//  PROPERTY isMemTable INIT .T.

ENDCLASS
