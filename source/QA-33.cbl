      ******************************************************************
      *    テストケース：QA-33
      *    プログラム名：日本語化テスト QA
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           QA-33.
       AUTHOR.               TSH.
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
       01  CASE-ID            PIC X(30).
      *
       01  A-01     PIC AAA   VALUE "１２３".
      *    OC Warning: Value does not fit the picture string
      *    MF fatal  : value-size over
       01  A-02     PIC AAA   VALUE "１".
      *    OC Warning: Value does not fit the picture string
      *    MF no-error:
       01  N-ZONE   PIC 999   VALUE "１".
      *    OC Warning: Numeric value is expected
      *    MF Fatal  : illegal value or picture conbination
       01  N-EDIT   PIC --9.9 VALUE "１２".
      *    Warning:  : Value does not fit the picture string
      *    MF no error:
      *****************************************************
       LINKAGE SECTION.
       01  BASE-CHAR    PIC X(10).
      *****************************************************
       PROCEDURE             DIVISION.
      ******************************************************************
       MAIN                  SECTION.
       P-010. 
            DISPLAY "QA-33 test start".
      *ケース1:
            MOVE "Alphbetic value '１２３'" TO CASE-ID.
            DISPLAY CASE-ID "A-01=" A-01.
      *ケース1-2:
            MOVE "Alphbetic value '１'" TO CASE-ID.
            DISPLAY CASE-ID "A-02=" A-02.
      *ケース3:
            MOVE "N-ZONE    value 'Ｇ'" TO CASE-ID.
            DISPLAY CASE-ID "N-ZONE=" N-ZONE.
      *ケース4:
            MOVE "N-EDIT    value 'Ｇ'" TO CASE-ID.
            DISPLAY CASE-ID "N-EDIT=" N-EDIT.
      *     
            DISPLAY "QA-33 test end".
            *>ACCEPT OMIT-WK.
            GOBACK
            .

