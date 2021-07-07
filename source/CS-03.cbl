      ******************************************************************
      *    �e�X�g�P�[�X�FCS-03
      *    �v���O�������F�ʉ݋L���e�X�g 
      *    �����T�v�@�@�F�ʉ݋L���u���v����сA
      *                  CURRENCY-SIGN�傪�g���邩�`�F�b�N����B
      *  --------------------------------------------------------------
      *   �e�X�g�P�[�X:CURRENCY SIGN��̎w��Ȃ��ŁA
      *               �u\�v�Ɓu$�v�����͎g���邩�B
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           CS-03.
       AUTHOR.               TSH.
       DATE-WRITTEN.         2011-08-24.
       DATE-COMPILED.        2011-08-24.
      ******************************************************************
       ENVIRONMENT           DIVISION.
      ******************************************************************
       CONFIGURATION         SECTION.
       SOURCE-COMPUTER.      PC.
       OBJECT-COMPUTER.      PC.
      *  SPECIAL-NAMES.
      *       CURRENCY SIGN IS "$".
      ******************************************************************
       DATA                  DIVISION.
      ******************************************************************
      ******************************************************************
       WORKING-STORAGE       SECTION.
      ******************************************************************
       01  OMIT-WK            PIC X.
       01  CASE-ID            PIC X(10).
      *
       01  NUM-01        PIC S9(5).
       01  NUM-02        PIC S9(5).
       01  NUM-03        PIC S9(5).
      *
       01  NEDIT-01X.
           05 NEDIT-01   PIC $$$,$$9.
       01  NEDIT-02X.
           05  NEDIT-02  PIC \\\,\\9.  *>#002 C-SIGN only 1 character
       01  WK-I          PIC S9(3).
      ******************************************************************
       PROCEDURE             DIVISION.
      ******************************************************************
       MAIN                  SECTION.
       P-010. 
            DISPLAY "TEST START (CS-03)".
      *�P�[�X1.
            MOVE "P-010-01"        TO CASE-ID.
            MOVE      1 TO NUM-01.
            MOVE NUM-01 TO NEDIT-01.
            IF NEDIT-01X = "     $1"
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG:" NEDIT-01X
            END-IF.
      *
            MOVE "P-010-02"        TO CASE-ID.
            MOVE   1234 TO NUM-01.
            MOVE NUM-01 TO NEDIT-01.
            IF NEDIT-01X = " $1,234"
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG:" NEDIT-01X
            END-IF.
      *
            MOVE "P-010-03"        TO CASE-ID.
            MOVE   1234   TO NUM-01.
            MOVE NUM-01   TO NEDIT-01.
            MOVE NEDIT-01 TO NUM-02.
            IF NUM-02 = 1234
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG:" NUM-02
            END-IF.
      *�P�[�X1.
            MOVE "P-010-04"        TO CASE-ID.
            MOVE      1 TO NUM-01.
            MOVE NUM-01 TO NEDIT-02.
            IF NEDIT-02X = "     \1"
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG:" NEDIT-01X
            END-IF.
      *
            MOVE "P-010-05"        TO CASE-ID.
            MOVE   1234 TO NUM-01.
            MOVE NUM-01 TO NEDIT-02.
            IF NEDIT-01X = " \1,234"
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG:" NEDIT-01X
            END-IF.
      *
            MOVE "P-010-06"        TO CASE-ID.
            MOVE   1234   TO NUM-01.
            MOVE NUM-01   TO NEDIT-02.
            MOVE NEDIT-02 TO NUM-02.
            IF NUM-02 = 1234
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG:" NUM-02
            END-IF.
      *
            DISPLAY "TEST END   (CS-03)".
            *>ACCEPT OMIT-WK.
            GOBACK
            .

