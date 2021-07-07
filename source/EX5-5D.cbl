      ******************************************************************
      *    �e�X�g�P�[�X�F5-5D
      *    �v���O�������F���{�ꉻ�e�X�g �i�葱�����jMOVE����
      *    �����T�v�@�@�F���{��]�L�����������s����邩���`�F�b�N����B
      *  --------------------------------------------------------------
      *   �e�X�g�P�[�X:�R�Q�`�R�R�i����n�j
      *  
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           EX5-5D.
       AUTHOR.               TSH.
       DATE-WRITTEN.         2011-08-18.
       DATE-COMPILED.        2011-08-18.
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
       01  CASE-ID            PIC X(10).
       01  W-L-GRP.
           05  L-A            PIC A(10).
           05  FILLER         REDEFINES L-A.
               10  L-A-5      PIC X(5).
               10  L-A-3      PIC X(3).
               10  L-A-2      PIC X(2).
           05  L-GRP-10       REDEFINES L-A.
               10  L-GRP-4.
                   15  FILLER PIC X(4).
               10  FILLER     PIC X(6).
           05  L-AN           PIC X(10).
           05  FILLER         REDEFINES L-AN.
               10  L-AN-5     PIC X(5).
               10  L-AN-3     PIC X(3).
               10  L-AN-2     PIC X(2).
           05  L-ANE          PIC XX/XX/XX.
           05  L-ZONE         PIC 9(5).
           05  L-ZONE-DEC     PIC S9(3)V9(2).
           05  L-PACK         PIC S9(5)       COMP-3.
           05  L-PACK-DEC     PIC S9(3)V9(2)  COMP-3.
           05  L-BIN          PIC S9(5)       COMP.
           05  L-BIN-DEC      PIC S9(3)V9(2)  COMP.
           05  L-NE           PIC ----9.
           05  L-G-10         PIC N(10).
           05  FILLER         REDEFINES L-G-10.
               10  L-G-5      PIC N(5).
               10  L-G-3      PIC N(3).
               10  L-G-2      PIC N(2).
           05  L-GE           PIC N/N/N.
           05  FILLER         REDEFINES L-GE.
               10  L-GE-3     PIC N/N.
               10  L-GE-2     PIC /N.
           
       01  W-R-GRP.
           05  R-A            PIC A(10).
           05  R-GRP-10       REDEFINES R-A.
               10  R-GRP-4.
                   15  FILLER PIC X(4).
               10  FILLER     PIC X(6).
           05  R-AN           PIC X(10).
           05  R-ANE          PIC XX/XX/XX.
           05  FILLER         REDEFINES R-ANE.
               10  R-ANE-3    PIC XX/XX/.
               10  R-ANE-2    PIC XX.
           05  R-ZONE         PIC 9(5).
           05  R-ZONE-DEC     PIC S9(3)V9(2).
           05  R-PACK         PIC S9(5)       COMP-3.
           05  R-PACK-DEC     PIC S9(3)V9(2)  COMP-3.
           05  R-BIN          PIC S9(5)       COMP.
           05  R-BIN-DEC      PIC S9(3)V9(2)  COMP.
           05  R-NE           PIC ----9.
           05  R-G            PIC N(10).
           05  FILLER         REDEFINES R-G.
               10  R-G-5      PIC N(5).
               10  R-G-3      PIC N(3).
               10  R-G-2      PIC N(2).
           05  R-GJ           PIC N(10) JUST.
           05  FILLER         REDEFINES R-GJ.
               10  R-GJ-5     PIC N(5)  JUST.
               10  R-GJ-3     PIC N(3)  JUST.
               10  R-GJ-2     PIC N(2)  JUST.
           05  R-GE           PIC N/N/N.
           05  FILLER         REDEFINES R-GE.
               10  R-GE-3     PIC N/N.
               10  R-GE-2     PIC /N.
           05  R-GE-NB        PIC NNN/NBN/.
           05  R-GE-NBZ       PIC NNN/N0BN.
           
       01  W-CORR-GRP.
           05  L-A            PIC A(10).
           05  FILLER         REDEFINES L-A.
               10  L-A-5      PIC X(5).
               10  L-A-3      PIC X(3).
               10  L-A-2      PIC X(2).
           05  L-GRP-10       REDEFINES L-A.
               10  L-GRP-4.
                   15  FILLER PIC X(4).
               10  FILLER     PIC X(6).
           05  L-AN           PIC X(10).
           05  FILLER         REDEFINES L-AN.
               10  L-AN-5     PIC X(5).
               10  L-AN-3     PIC X(3).
               10  L-AN-2     PIC X(2).
           05  L-ANE          PIC XX/XX/XX.
           05  L-ZONE         PIC 9(5).
           05  L-ZONE-DEC     PIC S9(3)V9(2).
           05  L-PACK         PIC S9(5)       COMP-3.
           05  L-PACK-DEC     PIC S9(3)V9(2)  COMP-3.
           05  L-BIN          PIC S9(5)       COMP.
           05  L-BIN-DEC      PIC S9(3)V9(2)  COMP.
           05  L-NE           PIC ----9.
           05  L-G-10         PIC N(10).
           05  FILLER         REDEFINES L-G-10.
               10  L-G-5      PIC N(5).
               10  L-G-3      PIC N(3).
               10  L-G-2      PIC N(2).
           05  L-GE           PIC N/N/N.
           05  FILLER         REDEFINES L-GE.
               10  L-GE-3     PIC N/N.
               10  L-GE-2     PIC /N.
           
      ******************************************************************
       PROCEDURE             DIVISION.
      ******************************************************************
       MAIN                  SECTION.
       MAIN-00.
            DISPLAY "TEST START (EX5-5D)".
       P-320. 
      *  �P�[�X32. MOVE ���{�� TO �p�����A ���{��A�E�E�E
      *
            MOVE ALL "*"             TO W-R-GRP.
            MOVE "��������������������"  TO L-G-10 of W-L-GRP.
            MOVE L-G-10 OF W-L-GRP TO R-GRP-10,
                                      R-AN,
                                      R-ANE,
                                      R-G,
                                      R-GJ-5,
                                      R-GE.
            MOVE "P-320-01"        TO CASE-ID.
            IF  R-GRP-10 = "����������"
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-320-02"        TO CASE-ID.
            IF  R-AN = "����������"
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-320-03"        TO CASE-ID.
            IF  R-ANE = "��/��/��"
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-320-04"        TO CASE-ID.
            IF  R-G = "��������������������"
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-320-05"        TO CASE-ID.
            IF  R-GJ-5 = "����������"
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-320-06"        TO CASE-ID.
            IF  R-GE = "���^���^��"
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
      *  �P�[�X33. MOVE CORR �W�c TO �W�c
      *
            MOVE ALL "*" TO W-L-GRP.
            MOVE ALL "*" TO W-CORR-GRP.
            INITIALIZE W-L-GRP
                REPLACING ALPHABETIC          BY "A"
                          ALPHANUMERIC        BY "X"
                          NUMERIC             BY 123
                          ALPHANUMERIC-EDITED BY "E"
                          NUMERIC-EDITED      BY 999.
                          *>NATIONAL            BY "��"
                          *>NATIONAL-EDITED     BY "��".
            MOVE "��" TO L-G-10 of W-L-GRP.
            MOVE "��" TO L-GE   of W-L-GRP.
      *
            MOVE CORR W-L-GRP TO W-CORR-GRP.
      *
            MOVE "P-330-01"        TO CASE-ID.
            IF  L-A           OF W-L-GRP =
                L-A           OF W-CORR-GRP
                              DISPLAY CASE-ID "OK"
               ELSE           DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-330-02"        TO CASE-ID.
            IF  L-AN          OF W-L-GRP =
                L-AN          OF W-CORR-GRP
                              DISPLAY CASE-ID "OK"
               ELSE           DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-330-03"        TO CASE-ID.
            IF  L-ANE         OF W-CORR-GRP = "E // / /"
                              DISPLAY CASE-ID "OK"
               ELSE           DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-330-04"        TO CASE-ID.
            IF  L-ZONE        OF W-L-GRP =
                L-ZONE        OF W-CORR-GRP
                              DISPLAY CASE-ID "OK"
               ELSE           DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-330-05"        TO CASE-ID.
            IF  L-ZONE-DEC    OF W-L-GRP =
                L-ZONE-DEC    OF W-CORR-GRP
                              DISPLAY CASE-ID "OK"
               ELSE           DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-330-06"        TO CASE-ID.
            IF  L-PACK        OF W-L-GRP =
                L-PACK        OF W-CORR-GRP
                              DISPLAY CASE-ID "OK"
               ELSE           DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-330-07"        TO CASE-ID.
            IF  L-PACK-DEC    OF W-L-GRP =
                L-PACK-DEC    OF W-CORR-GRP
                              DISPLAY CASE-ID "OK"
               ELSE           DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-330-08"        TO CASE-ID.
            IF  L-BIN         OF W-L-GRP =
                L-BIN         OF W-CORR-GRP
                              DISPLAY CASE-ID "OK"
               ELSE           DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-330-09"        TO CASE-ID.
            IF  L-BIN-DEC     OF W-L-GRP =
                L-BIN-DEC     OF W-CORR-GRP
                              DISPLAY CASE-ID "OK"
               ELSE           DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-330-10"        TO CASE-ID.
            IF  L-NE          OF W-L-GRP =
                L-NE          OF W-CORR-GRP
                              DISPLAY CASE-ID "OK"
               ELSE           DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-330-11"        TO CASE-ID.
            IF  L-G-10        OF W-L-GRP =
                L-G-10        OF W-CORR-GRP
                              DISPLAY CASE-ID "OK"
               ELSE           DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-330-12"        TO CASE-ID.
            IF  L-GE          OF W-L-GRP =
                L-GE          OF W-CORR-GRP
                              DISPLAY CASE-ID "OK"
               ELSE           DISPLAY CASE-ID "NG:" L-GE OF W-CORR-GRP
            END-IF.
      *
             DISPLAY "TEST END   (EX5-5D)".
            *>ACCEPT OMIT-WK.
            GOBACK
            .

