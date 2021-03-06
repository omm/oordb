
#include "oordb.ch"

CLASS TBInvoiceItem FROM MyTableBase

EXPORTED:

    PROPERTY tableFileName INIT "invoiceitm"

    DEFINE FIELDS
    DEFINE PRIMARY INDEX

ENDCLASS

/*
    FIELDS
*/
BEGIN FIELDS CLASS TBInvoiceItem

    /* InvoiceItemId */
    ADD AUTOINC FIELD "IItemId" NAME "InvoiceItemId"

    /* Date */
    ADD DATE FIELD "Date" ;
        NEWVALUE {|self| ::masterSource:Field_Date():value }

    /* InventoryItem */
    ADD TABLE FIELD "InvItem" NAME "InventoryItem" ;
        CLASS "TBInventoryItem"

    /* Invoice */
    ADD TABLE FIELD "Invoice" ;
        CLASS "TBInvoice" ;
        DESCRIPTION "The Invoice (masterSource table)"

    /* Price */
    ADD FLOAT FIELD "Price" PICTURE "999,999.99" 

END FIELDS CLASS

/*
    PRIMARY INDEX
*/
BEGIN PRIMARY INDEX CLASS TBInvoiceItem

    DEFINE INDEX "Primary" KEYFIELD "InvoiceItemid"

END PRIMARY INDEX CLASS
