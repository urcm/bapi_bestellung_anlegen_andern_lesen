
*bapi_po_create1
* importing value(poheader)  type bapimepoheader
*  value(poheaderx)  type bapimepoheaderx optional
*  value(poaddrvendor)  type bapimepoaddrvendor optional
*  value(testrun)  type char1 optional
*  value(memory_uncomplete)  type char1 optional
*  value(memory_complete)  type char1 optional
*  value(poexpimpheader)  type bapieikp optional
*  value(poexpimpheaderx)  type bapieikpx optional
*  value(versions)  type bapimedcm optional
*  value(no_messaging)  type char1 optional
*  value(no_message_req)  type char1 optional
*  value(no_authority)  type char1 optional
*  value(no_price_from_po)  type char1 optional
*  value(park_complete)  type char1 optional
*  value(park_uncomplete)  type char1 optional
* exporting value(exppurchaseorder)  type ebeln
*  value(expheader)  type bapimepoheader
*  value(exppoexpimpheader)  type bapieikp
* tables return  type standard table of bapiret2 with header line optional
*  poitem  type standard table of bapimepoitem with header line optional
*  poitemx  type standard table of bapimepoitemx with header line optional
*  poaddrdelivery  type standard table of bapimepoaddrdelivery with header line optional
*  poschedule  type standard table of bapimeposchedule with header line optional
*  poschedulex  type standard table of bapimeposchedulx with header line optional
*  poaccount  type standard table of bapimepoaccount with header line optional
*  poaccountprofitsegment  type standard table of bapimepoaccountprofitsegment with header line optional
*  poaccountx  type standard table of bapimepoaccountx with header line optional
*  pocondheader  type standard table of bapimepocondheader with header line optional
*  pocondheaderx  type standard table of bapimepocondheaderx with header line optional
*  pocond  type standard table of bapimepocond with header line optional
*  pocondx  type standard table of bapimepocondx with header line optional
*  polimits  type standard table of bapiesuhc with header line optional
*  pocontractlimits  type standard table of bapiesucc with header line optional
*  poservices  type standard table of bapiesllc with header line optional
*  posrvaccessvalues  type standard table of bapiesklc with header line optional
*  poservicestext  type standard table of bapieslltx with header line optional
*  extensionin  type standard table of bapiparex with header line optional
*  extensionout  type standard table of bapiparex with header line optional
*  poexpimpitem  type standard table of bapieipo with header line optional
*  poexpimpitemx  type standard table of bapieipox with header line optional
*  potextheader  type standard table of bapimepotextheader with header line optional
*  potextitem  type standard table of bapimepotext with header line optional
*  allversions  type standard table of bapimedcm_allversions with header line optional
*  popartner  type standard table of bapiekkop with header line optional
*  pocomponents  type standard table of bapimepocomponent with header line optional
*  pocomponentsx  type standard table of bapimepocomponentx with header line optional
*  poshipping  type standard table of bapiitemship with header line optional
*  poshippingx  type standard table of bapiitemshipx with header line optional
*  poshippingexp  type standard table of bapimeposhippexp with header line optional
*  serialnumber  type standard table of bapimeposerialno with header line optional
*  serialnumberx  type standard table of bapimeposerialnox with header line optional
*  invplanheader  type standard table of bapi_invoice_plan_header with header line optional
*  invplanheaderx  type standard table of bapi_invoice_plan_headerx with header line optional
*  invplanitem  type standard table of bapi_invoice_plan_item with header line optional
*  invplanitemx  type standard table of bapi_invoice_plan_itemx with header line optional
*
*
*Documentation
*
*Create Purchase Order
*
*Longtext Documentation  Longtext Documentation
*
*Parameters
*
*
*importing  poheader   Header Data
*importing  poheaderx   Header Data (Change Parameter)
*importing  poaddrvendor   Address of Vendor
*importing  testrun   Test Indicator
*importing  memory_uncomplete   Hold Purchase Order if Faulty
*importing  memory_complete   Hold Purchase Order if NOT Faulty
*importing  poexpimpheader   Export Trade: Header Data
*importing  poexpimpheaderx   Foreign Trade: Change Bar: Header Data
*importing  versions   Version Management
*importing  no_messaging   No message determination
*importing  no_message_req   No messages necessary
*importing  no_authority   No Authorization Check
*importing  no_price_from_po   No Adoption of Price from Last Document
*importing  park_complete   Park Document if NOT Faulty
*importing  park_uncomplete   Park Document if Faulty
*exporting  exppurchaseorder   Purchasing Document Number
*exporting  expheader   Header Data
*exporting  exppoexpimpheader   Export Trade: Header Data
*tables  return   Return Parameter
*tables  poitem   Item Data
*tables  poitemx   Item Data (Change Parameter)
*tables  poaddrdelivery   Addresses for Inward Delivery (Item)
*tables  poschedule   Delivery Schedule
*tables  poschedulex   Delivery Schedule (Change Parameter)
*tables  poaccount   Account Assignment Fields
*tables  poaccountprofitsegment   Reservation Profitability Segment: BAPI_PROFITABILITY_SEGMEN
*tables  poaccountx   Account Assignment Fields (Change Parameter)
*tables  pocondheader   Conditions (Header)
*tables  pocondheaderx   Conditions (Header, Change Parameter)
*tables  pocond   Conditions (Items)
*tables  pocondx   Conditions (Items, Change Parameter)
*tables  polimits   External Services: Limits
*tables  pocontractlimits   External Services: Contract Limits
*tables  poservices   External Services: Service Lines
*tables  posrvaccessvalues   External Services: Account Assignment Distribution for Servi
*tables  poservicestext   External Services: Service Long Text
*tables  extensionin   Customer's Own Fields (Import Parameters)
*tables  extensionout   Customer's Own Fields (Export Parameters)
*tables  poexpimpitem   Foreign Trade: Item Data
*tables  poexpimpitemx   Foreign Trade: Change Parameter: Item Data
*tables  potextheader   Header Texts
*tables  potextitem   Item Texts
*tables  allversions   All Versions (Export Parameter)
*tables  popartner   Partner
*tables  pocomponents   BAPI Structure for Components
*tables  pocomponentsx   Update Information for Components in BUS2012 API
*tables  poshipping   BAPI Shipping Data for Stock Transport Orders
*tables  poshippingx   BAPI Shipping Data Change Parameter
*tables  poshippingexp   Export Structure for Shipping Data
*tables  serialnumber   Serial Numbers in Purchase Order BAPIs
*tables  serialnumberx   Change Parameter: Serial Number in Purchase Order BAPIs
*tables  invplanheader   Invoicing Plan Header Data
*tables  invplanheaderx   Invoicing Plan Header Data (Change Parameter)
*tables  invplanitem   Invoicing Plan Item Data
*tables  invplanitemx   Invoicing Plan Item Data (Change Parameter)




types: begin of ty_podata,
         comp_code  type bukrs, "'DE03'
         purch_org  type ekorg, "ZM04
         doc_type   type bsart, "'NB'
         pur_group  type ekgrp, "001
         matnr      type matnr, "'000000000000000216'
         werks      type werks, "'ZM03'
         vendor     type lifnr, "'0000300000'
         stge_loc   type lgort_d , "'L001'
         aedat      type aedat, "'09.03.2023'
         currency   type waers, "'EUR'
         po_item    type ebelp , "00010
         short_text type txz01,
         quantity   type bstmg , "10
         po_unit    type bstme, "'EA'
       end of ty_podata.
       
       
data: gt_return  type standard table of bapiret2,
      gt_poitem  type standard table of bapimepoitem,
      gt_poitemx type standard table of bapimepoitemx.
      
      
data: gv_exppurchaseorder  type ebeln,
      gt_expheader         type bapimepoheader,
      gt_exppoexpimpheader type bapieikp.


*data: gt_poheader      type bapimepoheader,
*      gt_bapimepoitem type standard table of bapimepoitem,
*      gt_return        type standard table of bapiret2.   


data(gt_poheader) = value bapimepoheader(
    comp_code            = 'DE03'
    doc_type             = 'NB'
    creat_date           = '09.03.2023'
    created_by           = 'XENO'
    vendor               = '0000300000'
    langu                = 'DE'
    langu_iso            = 'D'
    purch_org            = 'ZM04'
    pur_group            = '001'
    currency             = 'EUR'
    doc_date             = '09.03.2023'
).

data(gt_poheaderx) = value bapimepoheaderx(
    comp_code            = abap_true
    doc_type             = abap_true
    creat_date           = abap_true
    created_by           = abap_true
    vendor               = abap_true
    langu                = abap_true
    langu_iso            = abap_true
    purch_org            = abap_true
    pur_group            = abap_true
    currency             = abap_true
    doc_date             = abap_true
).


gt_poitem = value #( (
    po_item                    = '00010'
    short_text                 = 'Staubsauger Roboter'
    material                   = '000000000000000216'
    plant                      = 'ZM03'
    stge_loc                   = 'L001'
    quantity                   = '1.0'
    po_unit                    = 'EA'
) ).

gt_poitemx =  value #( (
    po_item                    = '00010'
    short_text                 = abap_true
    material                   = abap_true
    plant                      = abap_true
    stge_loc                   = abap_true
    quantity                   = abap_true
    po_unit                    = abap_true
) ).

call function 'BAPI_PO_CREATE1'
  exporting
    poheader          = gt_poheader     " Header Data
    poheaderx         = gt_poheaderx    " Header Data (Change Parameter)
*   poaddrvendor      =     " Address of Vendor
*   testrun           =     " Test Indicator
*   memory_uncomplete =     " Hold Purchase Order if Faulty
*   memory_complete   =     " Hold Purchase Order if NOT Faulty
*   poexpimpheader    =     " Export Trade: Header Data
*   poexpimpheaderx   =     " Foreign Trade: Change Bar: Header Data
*   versions          =     " Version Management
*   no_messaging      =     " No message determination
*   no_message_req    =     " No messages necessary
*   no_authority      =     " No Authorization Check
*   no_price_from_po  =     " No Adoption of Price from Last Document
*   park_complete     =     " Park Document if NOT Faulty
*   park_uncomplete   =     " Park Document if Faulty
  importing
    exppurchaseorder  = gv_exppurchaseorder    " Purchasing Document Number
    expheader         = gt_expheader   " Header Data
    exppoexpimpheader = gt_exppoexpimpheader   " Export Trade: Header Data
  tables
    return            = gt_return    " Return Parameter
    poitem            = gt_poitem    " Item Data
    poitemx           = gt_poitemx    " Item Data (Change Parameter)
*   poaddrdelivery    =     " Addresses for Inward Delivery (Item)
*   poschedule        =     " Delivery Schedule
*   poschedulex       =     " Delivery Schedule (Change Parameter)
*   poaccount         =     " Account Assignment Fields
*   poaccountprofitsegment =     " Reservation Profitability Segment: BAPI_PROFITABILITY_SEGMEN
*   poaccountx        =     " Account Assignment Fields (Change Parameter)
*   pocondheader      =     " Conditions (Header)
*   pocondheaderx     =     " Conditions (Header, Change Parameter)
*   pocond            =     " Conditions (Items)
*   pocondx           =     " Conditions (Items, Change Parameter)
*   polimits          =     " External Services: Limits
*   pocontractlimits  =     " External Services: Contract Limits
*   poservices        =     " External Services: Service Lines
*   posrvaccessvalues =     " External Services: Account Assignment Distribution for Servi
*   poservicestext    =     " External Services: Service Long Text
*   extensionin       =     " Customer's Own Fields (Import Parameters)
*   extensionout      =     " Customer's Own Fields (Export Parameters)
*   poexpimpitem      =     " Foreign Trade: Item Data
*   poexpimpitemx     =     " Foreign Trade: Change Parameter: Item Data
*   potextheader      =     " Header Texts
*   potextitem        =     " Item Texts
*   allversions       =     " All Versions (Export Parameter)
*   popartner         =     " Partner
*   pocomponents      =     " BAPI Structure for Components
*   pocomponentsx     =     " Update Information for Components in BUS2012 API
*   poshipping        =     " BAPI Shipping Data for Stock Transport Orders
*   poshippingx       =     " BAPI Shipping Data Change Parameter
*   poshippingexp     =     " Export Structure for Shipping Data
*   serialnumber      =     " Serial Numbers in Purchase Order BAPIs
*   serialnumberx     =     " Change Parameter: Serial Number in Purchase Order BAPIs
*   invplanheader     =     " Invoicing Plan Header Data
*   invplanheaderx    =     " Invoicing Plan Header Data (Change Parameter)
*   invplanitem       =     " Invoicing Plan Item Data
*   invplanitemx      =     " Invoicing Plan Item Data (Change Parameter)
  .


if not gv_exppurchaseorder is initial.
  call function 'BAPI_TRANSACTION_COMMIT'.
else.
  call function 'BAPI_TRANSACTION_ROLLBACK'.
endif.


cl_demo_output=>write_data( gt_return ).
cl_demo_output=>write_data( gt_poitem ).
cl_demo_output=>write_data( gt_poitemx ).
cl_demo_output=>write_data( gv_exppurchaseorder ).
cl_demo_output=>write_data( gt_expheader ).
cl_demo_output=>write_data( gt_exppoexpimpheader ).
cl_demo_output=>display(  ).
