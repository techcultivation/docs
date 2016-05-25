# Rounding of currencies

Rounding of currencies needs to be done as follows:

Is the first figure to be omitted 0, 1, 2, 3 or 4 it gets rounded down.  
Is the first figure to be omitted 5, 6, 7, 8 or 9 it gets rounded up.

Examples (rounding two figures behind decimal point):

* 13,3749... € => 13,37 €  
* 13,3750... € => 13,38 €

negative numbers are rounded according to their ammount, eg. 5 Away from Zero:

* -13,3749... € => -13,37 € 
* -13,3750... € => -13,38 €
