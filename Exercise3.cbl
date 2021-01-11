       IDENTIFICATION DIVISION.
       PROGRAM-Id. Exercise3 as "Exercise3".
       AUTHOR. Brahim Boubakar Toure (040941268).

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       
       01 ws-table.
          02 ws-table1 occurs 10 times.
          10 ws-table-structure pic zz9 occurs 10 times.
      *https://www.mainframestechhelp.com/tutorials/cobol/cobol-computation.htm
      *https://supportline.microfocus.com/documentation/books/oc41books/lrclan.htm           
                                                                                                                              
           01 numbers1 PIC s9(5) comp VALUE 0.
           01 numbers2 PIC s9(5)  comp value 0.
           01 ws-program-label pic X(34) value 
       '       Multiplication table 10x10:'.
           01 ws-table-out pic Z(4).
           01   result1 PIC zzzz VALUE 0.
           01  result2 PIC zzzz VALUE 0.
        01 WS-CNT PIC 9(1) VALUE 1. 

       
       Procedure division.
           display ws-program-label
           display space
        perform 10 times 
            add 1 to numbers1
            perform 10 times
                add 1 to numbers2
                compute ws-table-structure(numbers1 numbers2 )=
                numbers1 * numbers2
          end-perform
           
             move zero to numbers2
            end-perform.
           move zero to numbers1.
           
           perform 10 times
               add 1 to numbers1
      *https://www.tutorialspoint.com/cobol/cobol_table_processing.htm        
          Display  ws-table1(numbers1)
        
           
            end-perform.
          
          
           goback.
       
       
     
       end program Exercise3.