      ******************************************************************
      *    �e�X�g�P�[�X�F5-7A
      *    �v���O�������F���{�ꉻ�e�X�g �i�葱�����jUNSTRING����
      *    �����T�v�@�@�FUNSTRING���߂����������s����邩���`�F�b�N����B
      *  --------------------------------------------------------------
      *   �e�X�g�P�[�X:�P�`�P�X
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           EX5-7A.
       AUTHOR.               TSH.
       DATE-WRITTEN.         2011-08-24.
       DATE-COMPILED.        2011-08-24.
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
       01  OVER-SW            PIC 9.
       01  CASE-ID            PIC X(10).
       01  G-01        PIC N(10).
       01  W-PTR       PIC 999.
       01  W-TALLY     PIC 999.
       01  W-CNT-1     PIC 999.
       01  W-CNT-2     PIC 999.
       01  W-DEL-1     PIC N.
       01  W-DEL-2     PIC N.
       01  W-DEL2-1    PIC NN.
       01  W-DEL2-2    PIC NN.
       01  W-INTO.
           05  W-INTO-1    PIC N(10).
           05  W-INTO-2    PIC N(10).
           05  W-INTO-3    PIC N(10).
           05  W-INTO-4    PIC N(10).
           05  W-INTO-5    PIC N(10).
           05  W-DELIN-1   PIC N.
           05  W-DELIN-2   PIC N.
           05  W-DELIN2-1  PIC NN.
           05  W-DELIN2-2  PIC NN.
       01  X-01     PIC X(5).
       01  N-01     PIC 9(5).
       01  W-INTO-X PIC X(20).
      ******************************************************************
       PROCEDURE             DIVISION.
      ******************************************************************
       MAIN                  SECTION.
       P-010. 
            DISPLAY "TEST START  (EX5-7A)".
      *�P�[�X1.DELIMITED BY �萔1/��Ӗ�2
            MOVE "P-010-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE ALL "��"   TO W-INTO.
            MOVE "��" TO W-DEL-1.
            
            UNSTRING G-01 DELIMITED BY "��"
                     INTO W-INTO-1.
            IF W-INTO-1 = "����������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *
            MOVE "P-010-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO.
            UNSTRING G-01 DELIMITED BY W-DEL-1
                     INTO W-INTO-1.
            IF W-INTO-1 = "����������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *�P�[�X2�FDELIMITED BY [ALL] �萔1
            MOVE "P-020-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE ALL "��"   TO W-INTO.
            
            MOVE 1 TO W-PTR.
            UNSTRING G-01 DELIMITED BY "��"
                     INTO W-INTO-1
                     WITH POINTER W-PTR.
            IF W-INTO-1 = "����������"
               AND W-PTR = 7
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *
            MOVE "P-020-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO.
            MOVE 1 TO W-PTR.
            UNSTRING G-01 DELIMITED BY ALL "��"
                     INTO W-INTO-1
                     WITH POINTER W-PTR.
            IF W-INTO-1 = "����������"
               AND W-PTR = 9
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *�P�[�X3�FDELIMITED BY �萔1/��Ӗ��Q OR �E�E�E
            MOVE "P-030-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE ALL "��"   TO W-INTO.
            MOVE "��" TO W-DEL-1.
            MOVE "��" TO W-DEL-2.
            
            UNSTRING G-01 DELIMITED BY "��" OR "��"
                     INTO W-INTO-1 W-INTO-2.
            IF W-INTO-1 = "��"  AND
               W-INTO-2 = "��������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *
            MOVE "P-030-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO.
            UNSTRING G-01 DELIMITED BY W-DEL-1 OR W-DEL-2
                     INTO W-INTO-1 W-INTO-2.
            IF W-INTO-1 = "��"  AND
               W-INTO-2 = "��������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *�P�[�X4�FDELIMITED BY ALL �萔1�@OR  ALL �萔2
            MOVE "P-040-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE ALL "��"   TO W-INTO.
            MOVE 1 TO W-PTR.
            
            UNSTRING G-01 DELIMITED BY "��" OR "��"
                     INTO W-INTO-1 W-INTO-2
                     WITH POINTER W-PTR.
            IF W-INTO-1 = "����" AND
               W-INTO-2 = SPACES AND
               W-PTR = 5
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *
            MOVE "P-040-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO.
            MOVE 1 TO W-PTR.
            UNSTRING G-01 DELIMITED BY ALL "��" OR ALL "��"
                     INTO W-INTO-1 W-INTO-2
                     WITH POINTER W-PTR.
            IF W-INTO-1 = "����" AND
               W-INTO-2 = "����" AND
               W-PTR = 10
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *�P�[�X5�FDELIMITED BY �\�Ӓ萔�@OR  ALL �\�Ӓ萔
            MOVE "P-050-01"        TO CASE-ID.
            MOVE "�����@�@�@�����h�h��" TO G-01.
            MOVE ALL "��"   TO W-INTO.
            MOVE 1 TO W-PTR.
            
            UNSTRING G-01 DELIMITED BY SPACE OR QUOTE
                     INTO W-INTO-1 W-INTO-2
                     WITH POINTER W-PTR.
            IF W-INTO-1 = "����" AND
               W-INTO-2 = SPACES AND
               W-PTR = 5
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *
            MOVE "P-050-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO.
            MOVE 1 TO W-PTR.
            UNSTRING G-01 DELIMITED BY ALL SPACES OR ALL QUOTE
                     INTO W-INTO-1 W-INTO-2
                     WITH POINTER W-PTR.
            IF W-INTO-1 = "����" AND
               W-INTO-2 = "����" AND
               W-PTR = 10
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *�P�[�X6�FINTO ��Ӗ�4�ADELIMITER IN ��Ӗ�5 COUNT IN ��Ӗ��U �E�E�E
            MOVE "P-060-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE ALL "��"   TO W-INTO.
            MOVE "��" TO W-DEL-1.
            MOVE "��" TO W-DEL-2.
            
            UNSTRING G-01 DELIMITED BY "��" OR "��"
                     INTO W-INTO-1 DELIMITER IN W-DELIN-1 
                                   COUNT IN W-CNT-1.
            
            IF W-INTO-1 = "��" AND W-DELIN-1 = "��" AND W-CNT-1 = 1
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *
            MOVE "P-060-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO.
            UNSTRING G-01 DELIMITED BY W-DEL-1 OR W-DEL-2
                     INTO W-INTO-1 DELIMITER IN W-DELIN-1 
                                   COUNT IN W-CNT-1
                          W-INTO-2 DELIMITER IN W-DELIN-2 
                                   COUNT IN W-CNT-2.
            IF  W-INTO-1 = "��"       AND 
                W-DELIN-1 = "��" AND W-CNT-1 = 1
            AND W-INTO-2 = "��������" AND 
                W-DELIN-2 = "��" AND W-CNT-2 = 4
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *�P�[�X7�FWITH POINTER��
            MOVE "P-070-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE ALL "��"   TO W-INTO.
            
            MOVE 1 TO W-PTR.
            UNSTRING G-01 DELIMITED BY "��"
                   INTO W-INTO-1
                   WITH POINTER W-PTR.
            IF W-INTO-1 = "������������������" AND
               W-PTR = 11
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *
            MOVE "P-070-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO.
            MOVE 5 TO W-PTR.
            UNSTRING G-01 DELIMITED BY "��"
                   INTO W-INTO-1
                   WITH POINTER W-PTR.
            IF W-INTO-1 = "����������" AND
               W-PTR = 11
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *
            MOVE "P-070-03"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO.
            MOVE 11 TO W-PTR.
            UNSTRING G-01 DELIMITED BY "��"
                   INTO W-INTO-1
                   WITH POINTER W-PTR.
            IF W-INTO-1 = ALL "��" AND
               W-PTR = 11
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *
            MOVE "P-070-04"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO.
            MOVE 0 TO W-PTR.
            UNSTRING G-01 DELIMITED BY "��"
                   INTO W-INTO-1
                   WITH POINTER W-PTR.
            IF W-INTO-1 = ALL "��" AND
               W-PTR = 0
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *�P�[�X8�FTALLYING��
            MOVE "P-080-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE ALL "��" TO W-INTO.
            
            MOVE 0 TO W-TALLY.
            UNSTRING G-01 
                 DELIMITED BY "��" OR "��" OR "��" OR "��" OR "��"
                 INTO W-INTO-1 W-INTO-2 W-INTO-3 W-INTO-4 W-INTO-5
                 TALLYING IN W-TALLY.
            IF W-INTO-1 = "��" AND W-INTO-2 = "��" AND
               W-INTO-3 = "��" AND
               W-INTO-4 = "��" AND W-INTO-5 = "��" AND
               W-TALLY = 5
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *
            MOVE "P-080-02"        TO CASE-ID.
            MOVE ALL "��" TO W-INTO.
            MOVE 3 TO W-TALLY.
            UNSTRING G-01 DELIMITED BY "��" OR "��" OR "��"
                 INTO W-INTO-1 W-INTO-2 W-INTO-3 W-INTO-4 W-INTO-5
                 TALLYING IN W-TALLY.
            IF W-INTO-1 = "��" AND W-INTO-2 = "������" AND 
               W-INTO-3 = "������" AND
               W-INTO-4 = ALL "��" AND W-INTO-5 = ALL "��" AND
               W-TALLY = 6
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.

      *�P�[�X9�FOVERFLOW
            MOVE "P-090-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE ALL "��" TO W-INTO.
            
            MOVE 0 TO W-TALLY.
            UNSTRING G-01 
                 DELIMITED BY "��" OR "��" OR "��" OR "��" OR "��"
                 INTO W-INTO-1 W-INTO-2 W-INTO-3 W-INTO-4 W-INTO-5
                 TALLYING IN W-TALLY
                 ON OVERFLOW MOVE 1 TO OVER-SW
                 NOT ON OVERFLOW MOVE 0 TO OVER-SW
            END-UNSTRING.
            
            IF W-INTO-1 = "��" AND W-INTO-2 = "��" AND 
               W-INTO-3 = "��" AND
               W-INTO-4 = "��" AND W-INTO-5 = "��" AND
               W-TALLY = 5 AND OVER-SW = 0
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *
            MOVE "P-090-02"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE ALL "��" TO W-INTO.
            
            MOVE 0 TO W-TALLY.
            UNSTRING G-01 
                 DELIMITED BY "��" OR "��" OR "��" OR "��" OR "��"
                 INTO W-INTO-1 W-INTO-2 W-INTO-3
                 TALLYING IN W-TALLY
                 ON OVERFLOW MOVE 1 TO OVER-SW
                 NOT ON OVERFLOW MOVE 0 TO OVER-SW
            END-UNSTRING.
            
            IF W-INTO-1 = "��" AND W-INTO-2 = "��" AND 
               W-INTO-3 = "��" AND
               W-INTO-4 = ALL "��" AND W-INTO-5 = ALL "��" AND
               W-TALLY = 3 AND OVER-SW = 1
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *�P�[�X10�F�����e�X�g�P
            MOVE "P-100-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE ALL "��" TO W-INTO.
            MOVE 1 TO W-PTR.
            MOVE 0 TO W-TALLY.
            UNSTRING G-01 
                 DELIMITED BY "��" OR "��" OR "��" OR "��" OR "��"
                 INTO W-INTO-1 DELIMITER IN W-DELIN-1 COUNT IN W-CNT-1
                      W-INTO-2 DELIMITER IN W-DELIN-2 COUNT IN W-CNT-2
                      W-INTO-3
                      W-INTO-4
                      W-INTO-5
                 WITH POINTER W-PTR
                 TALLYING IN W-TALLY
                 ON OVERFLOW MOVE 1 TO OVER-SW
                 NOT ON OVERFLOW MOVE 0 TO OVER-SW
            END-UNSTRING.
            
            IF W-INTO-1 = "��" AND W-DELIN-1 = "��" AND W-CNT-1 = 1 AND
               W-INTO-2 = "��" AND W-DELIN-2 = "��" AND W-CNT-1 = 1 AND
               W-INTO-3 = "��" AND
               W-INTO-4 = "��" AND
               W-INTO-5 = "��" AND
               W-TALLY = 5 AND W-PTR = 11 AND OVER-SW = 0
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *
            MOVE "P-100-02"        TO CASE-ID.
            MOVE "�����������@�@������" TO G-01.
            MOVE ALL "��" TO W-INTO.
            MOVE 2 TO W-PTR.
            MOVE 10 TO W-TALLY.
            UNSTRING G-01 DELIMITED BY "��" OR ALL SPACE OR "��"
                 INTO W-INTO-1 DELIMITER IN W-DELIN-1 COUNT IN W-CNT-1
                      W-INTO-2 DELIMITER IN W-DELIN-2 COUNT IN W-CNT-2
                      W-INTO-3
                 WITH POINTER W-PTR
                 TALLYING IN W-TALLY
                 ON OVERFLOW MOVE 1 TO OVER-SW
                 NOT ON OVERFLOW MOVE 0 TO OVER-SW
            END-UNSTRING.
            
            IF  W-INTO-1 = "����" AND  W-DELIN-1 = "��" AND W-CNT-1 = 2 
            AND W-INTO-2 = "��"   AND  W-DELIN-2 = "�@" AND W-CNT-2 = 1 
            AND W-INTO-3 = "�@"      AND
                W-INTO-4 = ALL "��"  AND
                W-INTO-5 = ALL "��"  AND
                W-TALLY = 13 AND W-PTR = 9 AND OVER-SW = 1
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *
            *>ACCEPT OMIT-WK.
      *�P�[�X11�FDELIMITED BY �萔1/��Ӗ�2�i2�o�C�gDELIMITER)
            MOVE "P-110-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE ALL "��"   TO W-INTO.
            MOVE "����" TO W-DEL2-1.
            
            UNSTRING G-01 DELIMITED BY "����"
                     INTO W-INTO-1.
            IF W-INTO-1 = "����������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *
            MOVE "P-110-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO.
            UNSTRING G-01 DELIMITED BY W-DEL2-1
                     INTO W-INTO-1.
            IF W-INTO-1 = "����������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *�P�[�X12�FDELIMITED BY [ALL] �萔1�i2�o�C�gDELIMITER)
            MOVE "P-120-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE ALL "��"   TO W-INTO.
            
            MOVE 1 TO W-PTR.
            UNSTRING G-01 DELIMITED BY "����"
                     INTO W-INTO-1
                     WITH POINTER W-PTR.
            IF W-INTO-1 = "����������"
               AND W-PTR = 8
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *
            MOVE "P-120-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO.
            MOVE 1 TO W-PTR.
            UNSTRING G-01 DELIMITED BY ALL "����"
                     INTO W-INTO-1
                     WITH POINTER W-PTR.
            IF W-INTO-1 = "����������"
               AND W-PTR = 8
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *�P�[�X13�FDELIMITED BY �萔1/��Ӗ��Q�@OR �E�E�E�i2�o�C�gDELIMITER)
            MOVE "P-130-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE ALL "��"   TO W-INTO.
            MOVE "����" TO W-DEL2-1.
            MOVE "����" TO W-DEL2-2.
            
            UNSTRING G-01 DELIMITED BY "����" OR "����"
                     INTO W-INTO-1 W-INTO-2.
            IF W-INTO-1 = "��"     AND
               W-INTO-2 = "������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *
            MOVE "P-130-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO.
            UNSTRING G-01 DELIMITED BY W-DEL2-1 OR W-DEL2-2
                     INTO W-INTO-1 W-INTO-2.
            IF W-INTO-1 = "��"     AND
               W-INTO-2 = "������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *�P�[�X14�FDELIMITED BY ALL �萔1�@OR  ALL �萔2�i2�o�C�gDELIMITER)
            MOVE "P-140-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE ALL "��"   TO W-INTO.
            MOVE 1 TO W-PTR.
            
            UNSTRING G-01 DELIMITED BY "����" OR "����"
                     INTO W-INTO-1 W-INTO-2
                     WITH POINTER W-PTR.
            IF W-INTO-1 = "����" AND
               W-INTO-2 = "������" AND
               W-PTR = 10
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *
            MOVE "P-140-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO.
            MOVE 1 TO W-PTR.
            UNSTRING G-01 DELIMITED BY ALL "����" OR ALL "����"
                     INTO W-INTO-1 W-INTO-2
                     WITH POINTER W-PTR.
            IF W-INTO-1 = "����" AND
               W-INTO-2 = "������" AND
               W-PTR = 10
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *�P�[�X15�FINTO ��Ӗ�4�ADELIMITER IN ��Ӗ�5 COUNT IN ��Ӗ��U �E�E�E�i2�o�C�gDELIMITER)
            MOVE "P-150-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE ALL "��"   TO W-INTO.
            MOVE "����" TO W-DEL2-1.
            MOVE "����" TO W-DEL2-2.
            
            UNSTRING G-01 
                     DELIMITED BY "����" OR "����"
                     INTO W-INTO-1 DELIMITER IN W-DELIN2-1 
                                   COUNT IN W-CNT-1.
            
            IF W-INTO-1 = "��" AND W-DELIN2-1 = "����" AND W-CNT-1 = 1
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *
            MOVE "P-150-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO.
            UNSTRING G-01 DELIMITED BY W-DEL2-1 OR W-DEL2-2
                     INTO W-INTO-1 DELIMITER IN W-DELIN2-1 
                                   COUNT IN W-CNT-1
                          W-INTO-2 DELIMITER IN W-DELIN2-2 
                                   COUNT IN W-CNT-2.
            IF  W-INTO-1 = "��"   AND W-DELIN2-1 = "����" AND
                W-CNT-1 = 1
            AND W-INTO-2 = "����" AND W-DELIN2-2 = "����" AND 
                W-CNT-2 = 2
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *�P�[�X16�FWITH POINTER��i2�o�C�gDELIMITER)
            MOVE "P-160-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE ALL "��"   TO W-INTO.
            
            MOVE 1 TO W-PTR.
            UNSTRING G-01 DELIMITED BY "����"
                   INTO W-INTO-1
                   WITH POINTER W-PTR.
            IF W-INTO-1 = "��������������������" AND
               W-PTR = 11
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *
            MOVE "P-160-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO.
            MOVE 5 TO W-PTR.
            UNSTRING G-01 DELIMITED BY "����"
                   INTO W-INTO-1
                   WITH POINTER W-PTR.
            IF W-INTO-1 = "��������" AND
               W-PTR = 11
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *
            MOVE "P-160-03"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO.
            MOVE 11 TO W-PTR.
            UNSTRING G-01 DELIMITED BY "����"
                   INTO W-INTO-1
                   WITH POINTER W-PTR.
            IF W-INTO-1 = ALL "��" AND
               W-PTR = 11
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *
            MOVE "P-160-04"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO.
            MOVE 0 TO W-PTR.
            UNSTRING G-01 DELIMITED BY "����"
                   INTO W-INTO-1
                   WITH POINTER W-PTR.
            IF W-INTO-1 = ALL "��" AND
               W-PTR = 0
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.

      *�P�[�X17�FTALLYING��i2�o�C�gDELIMITER)
            MOVE "P-170-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE ALL "��" TO W-INTO.
            
            MOVE 0 TO W-TALLY.
            UNSTRING G-01 DELIMITED BY "����" OR "����"
                 INTO W-INTO-1 W-INTO-2 W-INTO-3 W-INTO-4 W-INTO-5
                 TALLYING IN W-TALLY.
            IF W-INTO-1 = "��" AND W-INTO-2 = "�@" AND 
               W-INTO-3 = "������" AND
               W-INTO-4 = ALL "��" AND W-INTO-5 = ALL "��" AND
               W-TALLY = 3
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *
            MOVE "P-170-02"        TO CASE-ID.
            MOVE ALL "��" TO W-INTO.
            MOVE 3 TO W-TALLY.
            UNSTRING G-01 DELIMITED BY ALL "����"
                 INTO W-INTO-1 W-INTO-2 W-INTO-3 W-INTO-4 W-INTO-5
                 TALLYING IN W-TALLY.
            IF W-INTO-1 = "��" AND W-INTO-2 = "����������" AND 
               W-INTO-3 = ALL "��" AND
               W-INTO-4 = ALL "��" AND W-INTO-5 = ALL "��" AND
               W-TALLY = 5
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *�P�[�X18�FOVERFLOW�i2�o�C�gDELIMITER)
            MOVE "P-180-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE ALL "��" TO W-INTO.
            
            MOVE 0 TO W-TALLY.
            UNSTRING G-01 DELIMITED BY "����" OR "����" OR "����"
                 INTO W-INTO-1 W-INTO-2 W-INTO-3 W-INTO-4 W-INTO-5
                 TALLYING IN W-TALLY
                 ON OVERFLOW MOVE 1 TO OVER-SW
                 NOT ON OVERFLOW MOVE 0 TO OVER-SW
            END-UNSTRING.
            IF W-INTO-1 = "��" AND W-INTO-2 = "��" AND 
               W-INTO-3 = "����" AND
               W-INTO-4 = ALL "��" AND W-INTO-5 = ALL "��" AND
               W-TALLY = 3 AND OVER-SW = 0
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *
            MOVE "P-180-02"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE ALL "��" TO W-INTO.
            MOVE 0 TO W-TALLY.
            UNSTRING G-01 DELIMITED BY "����" OR "����" OR "����"
                 INTO W-INTO-1 W-INTO-2 
                 TALLYING IN W-TALLY
                 ON OVERFLOW MOVE 1 TO OVER-SW
                 NOT ON OVERFLOW MOVE 0 TO OVER-SW
            END-UNSTRING.
            
            IF W-INTO-1 = "��" AND W-INTO-2 = "��" AND 
               W-INTO-3 = ALL "��" AND
               W-INTO-4 = ALL "��" AND W-INTO-5 = ALL "��" AND
               W-TALLY = 2 AND OVER-SW = 1
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *�P�[�X19�F�����e�X�g�Q�i2�o�C�gDELIMITER)
            MOVE "P-190-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE ALL "��" TO W-INTO.
            MOVE 1 TO W-PTR.
            MOVE 0 TO W-TALLY.
            UNSTRING G-01 DELIMITED BY "������" OR "����"
                 INTO W-INTO-1 DELIMITER IN W-DELIN2-1 
                               COUNT IN W-CNT-1
                      W-INTO-2 DELIMITER IN W-DELIN2-2 
                               COUNT IN W-CNT-2
                      W-INTO-3
                      W-INTO-4
                      W-INTO-5
                 WITH POINTER W-PTR
                 TALLYING IN W-TALLY
                 ON OVERFLOW MOVE 1 TO OVER-SW
                 NOT ON OVERFLOW MOVE 0 TO OVER-SW
            END-UNSTRING.
            
            IF W-INTO-1 = "����"   AND W-DELIN2-1 = "����" AND 
               W-CNT-1 = 2 AND
               W-INTO-2 = "������" AND W-DELIN2-2 = "����" AND 
               W-CNT-2 = 3 AND
               W-INTO-3 = ALL "��"  AND
               W-INTO-4 = ALL "��"  AND
               W-INTO-5 = ALL "��"  AND
               W-TALLY = 2 AND W-PTR = 11 AND OVER-SW = 0
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *
            MOVE "P-190-02"        TO CASE-ID.
            MOVE "�����������@�@������" TO G-01.
            MOVE ALL "��" TO W-INTO.
            MOVE 2 TO W-PTR.
            MOVE 10 TO W-TALLY.
            UNSTRING G-01 DELIMITED BY "����" OR ALL SPACE
                 INTO W-INTO-1 DELIMITER IN W-DELIN-1 
                               COUNT IN W-CNT-1
                      W-INTO-2 DELIMITER IN W-DELIN-2 
                               COUNT IN W-CNT-2
                 WITH POINTER W-PTR
                 TALLYING IN W-TALLY
                 ON OVERFLOW MOVE 1 TO OVER-SW
                 NOT ON OVERFLOW MOVE 0 TO OVER-SW
            END-UNSTRING.
            
            IF W-INTO-1 = "��"  AND 
               W-DELIN-1 = "��" AND W-CNT-1 = 1 AND
               W-INTO-2 = "��"   AND 
               W-DELIN-2 = "�@"   AND W-CNT-2 = 1 AND
               W-INTO-3 = ALL "��" AND
               W-INTO-4 = ALL "��" AND
               W-INTO-5 = ALL "��" AND
               W-TALLY = 12 AND W-PTR = 8 AND OVER-SW = 1
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      ***
            DISPLAY "TEST END    (EX5-7A)".
            *>ACCEPT OMIT-WK.
            GOBACK
            .

