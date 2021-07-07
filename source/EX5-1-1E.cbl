      ******************************************************************
      *    �e�X�g�P�[�X�F5-1-1E
      *    �v���O�������F���{�ꉻ�e�X�g �i�葱�����j���� ��r����
      *    �����T�v�@�@�F���{���r�����������s����邩���`�F�b�N����B
      *  --------------------------------------------------------------
      *   �e�X�g�P�[�X:�S�T�`�S�W
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           EX5-1-1E.
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
           05  L-AN           PIC X(10).
           05  L-ANE          PIC XX/XX/XX.
           05  L-ZONE         PIC 9(5).
           05  L-ZONE-DEC     PIC S9(3)V9(2).
           05  L-PACK         PIC S9(5)       COMP-3.
           05  L-PACK-DEC     PIC S9(3)V9(2)  COMP-3.
           05  L-BIN          PIC S9(5)       COMP.
           05  L-BIN-DEC      PIC S9(3)V9(2)  COMP.
           05  L-NE           PIC ----9.
           05  L-G            PIC N(5).
           05  FILLER         REDEFINES L-G.
               10  L-G-3      PIC N(3).
               10  L-G-2      PIC N(2).
           05  L-GE           PIC N/N/N.
           05  FILLER         REDEFINES L-GE.
               10  L-GE-3     PIC N/N.
               10  L-GE-2     PIC /N.
           
       01  W-R-GRP.
           05  R-A            PIC A(10).
           05  R-AN           PIC X(10).
           05  R-ANE          PIC XX/XX/XX.
           05  R-ZONE         PIC 9(5).
           05  R-ZONE-DEC     PIC S9(3)V9(2).
           05  R-PACK         PIC S9(5)       COMP-3.
           05  R-PACK-DEC     PIC S9(3)V9(2)  COMP-3.
           05  R-BIN          PIC S9(5)       COMP.
           05  R-BIN-DEC      PIC S9(3)V9(2)  COMP.
           05  R-NE           PIC ----9.
           05  R-G            PIC N(5).
           05  FILLER         REDEFINES R-G.
               10  R-G-3      PIC N(3).
               10  R-G-2      PIC N(2).
           05  R-GE           PIC N/N/N.
           05  FILLER         REDEFINES R-GE.
               10  R-GE-3     PIC N/N.
               10  R-GE-2     PIC /N.
      ******************************************************************
       PROCEDURE             DIVISION.
      ******************************************************************
       MAIN                  SECTION.
       P-450. 
            DISPLAY "TEST START (EX5-1-1E)".
      *  �P�[�X45.�i���Ӂj�\�Ӓ萔�{�i�E�Ӂj���{��
            MOVE ALL "�h"          TO R-G.
      *
            MOVE "P-450-01"        TO CASE-ID.
            IF QUOTES = R-G          DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-450-02"        TO CASE-ID.
            IF SPACES > R-G          DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
            MOVE "P-450-03"        TO CASE-ID.
            IF ZEROES < R-G          DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
       P-460. 
      *  �P�[�X46.�i���Ӂj�\�Ӓ萔�{�i�E�Ӂj���{��ҏW
            MOVE ALL SPACE         TO R-GE.
      *
            MOVE "P-460-01"        TO CASE-ID.
            IF SPACE = R-GE          DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
            MOVE "P-460-02"        TO CASE-ID.
            IF QUOTES > R-GE         DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-460-03"        TO CASE-ID.
            IF ZEROS < R-GE          DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
       P-470. 
      *  �P�[�X47.�i���Ӂj�\�Ӓ萔�{�i�E�Ӂj���{��萔
      
            MOVE "P-470-01"        TO CASE-ID.
            IF SPACES = "�@�@�@�@�@"
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-470-02"        TO CASE-ID.
            IF QUOTES >  "����������"         
                                     DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
            MOVE "P-470-03"        TO CASE-ID.
            IF ZEROES > "�O�O�O�O�O"         
                                     DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
       P-480. 
      *  �P�[�X47.�i���Ӂj�\�Ӓ萔�{�i�E�ӁjALL ���{��萔
      
            MOVE "P-480-01"        TO CASE-ID.
            IF SPACES = ALL "�@"
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-480-02"        TO CASE-ID.
            IF QUOTES >  ALL "��"         
                                     DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
            MOVE "P-480-03"        TO CASE-ID.
            IF ZEROES > ALL "�O"         
                                     DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
     *
            DISPLAY "TEST END   (EX5-1-1E)".
            *>ACCEPT OMIT-WK.
            GOBACK
            .

