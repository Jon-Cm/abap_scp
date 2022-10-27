CLASS zcl_delete_table_2662 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_delete_table_2662 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DELETE FROM zrent_brands2662.

    IF sy-subrc = 0.

      out->write( 'All data Deleted').

    ENDIF.

  ENDMETHOD.

ENDCLASS.
