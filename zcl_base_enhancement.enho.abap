CLASS lcl_zcl_base_enhancement DEFINITION DEFERRED.
CLASS zcl_base DEFINITION LOCAL FRIENDS lcl_zcl_base_enhancement.
CLASS lcl_zcl_base_enhancement DEFINITION.
  PUBLIC SECTION.
    CLASS-DATA obj TYPE REF TO lcl_zcl_base_enhancement.    "#EC NEEDED
    DATA core_object TYPE REF TO zcl_base .                 "#EC NEEDED
 INTERFACES  IPR_ZCL_BASE_ENHANCEMENT.
    METHODS:
      constructor IMPORTING core_object
                              TYPE REF TO zcl_base OPTIONAL.
ENDCLASS.
CLASS lcl_zcl_base_enhancement IMPLEMENTATION.
  METHOD constructor.
    me->core_object = core_object.
  ENDMETHOD.

  METHOD ipr_zcl_base_enhancement~foobar.
*"------------------------------------------------------------------------*
*" Declaration of PRE-method, do not insert any comments here please!
*"
*"methods FOOBAR .
*"------------------------------------------------------------------------*

    WRITE 'sdf'.

  ENDMETHOD.
ENDCLASS.