
#include "oordb.ch"

CLASS TBInvoiceItem_Invoice FROM TBInvoiceItem

EXPORTED:

    DEFINE FIELDS
    DEFINE PRIMARY INDEX

ENDCLASS

/*
    FIELDS
*/
BEGIN FIELDS CLASS TBInvoiceItem_Invoice

END FIELDS CLASS

/*
    PRIMARY INDEX
*/
BEGIN PRIMARY INDEX CLASS TBInvoiceItem_Invoice

    DEFINE INDEX "X01" NAME "Invoice_InventoryItem" MASTERKEYFIELD "Invoice" KEYFIELD "InventoryItem"

END PRIMARY INDEX CLASS
