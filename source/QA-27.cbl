      ******************************************************************
      *    テストケース：QA-27
      *    プログラム名：日本語化テスト QA
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           QA-27.
       AUTHOR.               TSH.
       DATE-WRITTEN.         2011-08-25.
       DATE-COMPILED.        2011-08-25.
      ******************************************************************
       ENVIRONMENT           DIVISION.
      ******************************************************************
       CONFIGURATION         SECTION.
       SOURCE-COMPUTER.      PC.
       OBJECT-COMPUTER.      PC.
       SPECIAL-NAMES.
      ******************************************************************
       DATA                  DIVISION.
      ******************************************************************
      ******************************************************************
       WORKING-STORAGE       SECTION.
      ******************************************************************
       01  OMIT-WK            PIC X.
       01  CASE-ID            PIC X(20).
       01  A        PIC 
          X/X/X/X/XBX/X/X/X/XBX/X/X/X/XB.
       01  B        PIC
          N/N/N/N/NBN/N/N/N/NBN/N/N/N/NB.
       01  C        PIC 
          X/X/X/X/XBX/X/X/X/XBX/X/X/X/XBX/X/X/X/XBX/X/X/X/XB.
       01  D        PIC
          N/N/N/N/NBN/N/N/N/NBN/N/N/N/NBN/N/N/N/NBN/N/N/N/NB.
      *01  E        PIC                                      *>Pic string >50
      *   X/X/X/X/XBX/X/X/X/XBX/X/X/X/XBX/X/X/X/XBX/X/X/X/XBX.
      *01  F        PIC
      *   N/N/N/N/NBN/N/N/N/NBN/N/N/N/NBN/N/N/N/NBN/N/N/N/NBN.
      ******************************************************************
       PROCEDURE             DIVISION.
      ******************************************************************
       MAIN                  SECTION.
       P-010. 
            DISPLAY "QA-27 test start".
      *ケース1:
            MOVE "PIC X string <= 30"  TO CASE-ID.
            MOVE "123451234512345" TO A
            IF A = ALL "1/2/3/4/5 "
               DISPLAY CASE-ID "OK"
            ELSE
               DISPLAY CASE-ID "NG"
               display "A=" A
            END-IF.
      *ケース2:
            MOVE "PIC N string <= 30"  TO CASE-ID.
            MOVE "１２３４５１２３４５１２３４５" TO B
            IF B = ALL "１／２／３／４／５　"
               DISPLAY CASE-ID "OK"
            ELSE
               DISPLAY CASE-ID "NG"
               display "B=" B
            END-IF.
      *ケース3:
            MOVE "PIC X string > 30"  TO CASE-ID.
            MOVE "1234512345123451234512345" TO C
            IF C = ALL "1/2/3/4/5 "
               DISPLAY CASE-ID "OK"
            ELSE
               DISPLAY CASE-ID "NG"
               display "C=" C
            END-IF.
      *ケース4:
            MOVE "PIC N string > 30"  TO CASE-ID.
            MOVE "１２３４５１２３４５１２３４５１２３４５１２３４５" 
                                      TO D
            IF D = ALL "１／２／３／４／５　"
               DISPLAY CASE-ID "OK"
            ELSE
               DISPLAY CASE-ID "NG"
               display "D=" D
            END-IF.
      *     
      *ケース5:
            MOVE "PIC X string <= 30"  TO CASE-ID.
            MOVE ALL "12345" TO A
            IF A = ALL "1/2/3/4/5 "
               DISPLAY CASE-ID "OK"
            ELSE
               DISPLAY CASE-ID "NG"
               display "A=" A
            END-IF.
      *ケース6:
            MOVE "PIC N string <= 30"  TO CASE-ID.
            MOVE ALL "１２３４５" TO B
            IF B = ALL "１／２／３／４／５　"
               DISPLAY CASE-ID "OK"
            ELSE
               DISPLAY CASE-ID "NG"
               display "B=" B
            END-IF.
            DISPLAY "QA-27 test end".
            *>ACCEPT OMIT-WK.
            GOBACK
            .

