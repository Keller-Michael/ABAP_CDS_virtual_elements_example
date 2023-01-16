CLASS zcl_mke_virtual_elements DEFINITION PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_sadl_exit_calc_element_read.

  PROTECTED SECTION.

  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_mke_virtual_elements IMPLEMENTATION.

  METHOD if_sadl_exit_calc_element_read~calculate.
    DATA lt_calculated_data TYPE STANDARD TABLE OF zmke_c_demo_flight_enh.

    MOVE-CORRESPONDING it_original_data TO lt_calculated_data.

    LOOP AT lt_calculated_data ASSIGNING FIELD-SYMBOL(<fs_data>).
      <fs_data>-SeatsAvailable = <fs_Data>-SeatsMax - <fs_data>-SeatsOccupied.
    ENDLOOP.

    MOVE-CORRESPONDING lt_calculated_data TO ct_calculated_data.
  ENDMETHOD.

  METHOD if_sadl_exit_calc_element_read~get_calculation_info.
  ENDMETHOD.

ENDCLASS.
