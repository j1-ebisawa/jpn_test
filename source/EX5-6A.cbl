      ******************************************************************
      *    �e�X�g�P�[�X�F5-6A
      *    �v���O�������F���{�ꉻ�e�X�g �i�葱�����jSTRING����
      *    �����T�v�@�@�FSTRING���߂����������s����邩���`�F�b�N����B
      *  --------------------------------------------------------------
      *   �e�X�g�P�[�X:�P�`�Q�T
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           EX5-6A.
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
       01  W-PTR    PIC 999.
       01  W-INTO   PIC N(10).
       01  W-INTO-2 PIC N(20).
       01  G-01     PIC N(5).
       01  G-01-1   PIC N(5).
       01  G-01-2   PIC N(5).
       01  G-02-1   PIC N.
       01  G-02-2   PIC NN.

       01  X-01     PIC X(5).
       01  N-01     PIC 9(5).
       01  W-INTO-X PIC X(20).
      ******************************************************************
       PROCEDURE             DIVISION.
      ******************************************************************
       MAIN                  SECTION.
       P-010. 
            DISPLAY "TEST START (EX5-6A)".
      *�P�[�X1.�P�[�X1.��Ӗ��P�A�萔1�ADELIMITED�w��Ȃ�
            MOVE "P-010-01"        TO CASE-ID.
            MOVE "������" TO G-01.
            MOVE ALL "��"   TO W-INTO.
            STRING G-01 INTO W-INTO.
            IF W-INTO = "�������@�@����������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.

            MOVE "P-010-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO.
            STRING "������" INTO W-INTO.
            IF W-INTO = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *�P�[�X2�F��Ӗ��P�A�萔1�ADELIMITED BY SIZE
            MOVE "P-020-01"        TO CASE-ID.
            MOVE "����������" TO G-01.
            MOVE ALL "��"   TO W-INTO.
            STRING G-01 DELIMITED BY SIZE
                        INTO W-INTO.
            IF W-INTO = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.

            MOVE "P-020-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO.
            STRING "����������" DELIMITED BY SIZE
                        INTO W-INTO.
            IF W-INTO = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *�P�[�X3�F��Ӗ��P�A�萔1�ADELIMITED BY �萔�Q
            MOVE "P-030-01"        TO CASE-ID.
            MOVE "����������" TO G-01.
            MOVE ALL "��"   TO W-INTO.
            STRING G-01 DELIMITED BY "��"
                        INTO W-INTO.
            IF W-INTO = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.

            MOVE "P-030-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO.
            STRING "����������" DELIMITED BY "��"
                        INTO W-INTO.
            IF W-INTO = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *�P�[�X4�F��Ӗ��P�A�萔1�ADELIMITED BY �\�Ӓ萔.ALL�萔
            MOVE "P-040-01"        TO CASE-ID.
            MOVE "������" TO G-01.
            MOVE ALL "��"   TO W-INTO.
            STRING G-01 DELIMITED BY SPACES
                        INTO W-INTO.
            IF W-INTO = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.

            MOVE "P-040-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO.
      *     STRING "�����h�h�h" DELIMITED BY ALL QUOTE
            STRING "�����h�h�h" DELIMITED BY     QUOTE
                        INTO W-INTO.
            IF W-INTO = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *�P�[�X5�F��Ӗ��P�A�萔1�ADELIMITED BY ��Ӗ��Q�A.ALL ��Ӗ��Q
            MOVE "P-050-01"        TO CASE-ID.
            MOVE "������" TO G-01.
            MOVE ALL "��"   TO W-INTO.
            MOVE SPACE TO G-02-1.
            STRING G-01 DELIMITED BY G-02-1
                        INTO W-INTO.
            IF W-INTO = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
            
            MOVE "P-050-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO.
            MOVE QUOTE TO G-02-1.
      *     STRING "�����h�h�h" DELIMITED BY ALL G-02-1
            STRING "�����h�h�h" DELIMITED BY     G-02-1
                        INTO W-INTO.
            IF W-INTO = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *�P�[�X6�F��Ӗ��P�A�萔1�ADELIMITED BY 2�����萔�Q
            MOVE "P-060-01"        TO CASE-ID.
            MOVE "����������" TO G-01.
            MOVE ALL "��"   TO W-INTO.
            STRING G-01 DELIMITED BY "����"
                        INTO W-INTO.
            IF W-INTO = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.

            MOVE "P-060-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO.
            STRING "����������" DELIMITED BY "����"
                        INTO W-INTO.
            IF W-INTO = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *�P�[�X7�F��Ӗ��P�A�萔1�ADELIMITED BY ALL 2�����萔
            MOVE "P-070-01"        TO CASE-ID.
            MOVE "����������" TO G-01.
            MOVE ALL "��"   TO W-INTO.
      *     STRING G-01 DELIMITED BY ALL "����"
            STRING G-01 DELIMITED BY     "����"
                        INTO W-INTO.
            IF W-INTO = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
            
            MOVE "P-070-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO.
      *     STRING "����������" DELIMITED BY ALL "����"
            STRING "����������" DELIMITED BY     "����"
                        INTO W-INTO.
            IF W-INTO = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *�P�[�X8�F��Ӗ��P�A�萔1�ADELIMITED BY ��Ӗ��Q�AALL ��Ӗ��Q
            MOVE "P-080-01"        TO CASE-ID.
            MOVE "����������" TO G-01.
            MOVE ALL "��"   TO W-INTO.
            MOVE "����" TO G-02-2.
            STRING G-01 DELIMITED BY G-02-2
                        INTO W-INTO.
            IF W-INTO = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
            
            MOVE "P-080-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO.
            MOVE "����" TO G-02-2.
      *     STRING "����������" DELIMITED BY ALL G-02-2
            STRING "����������" DELIMITED BY     G-02-2
                        INTO W-INTO.
            IF W-INTO = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *�P�[�X9�F��Ӗ��P�A�萔1�ADELIMITED�w��Ȃ��AWITH POINTER
            MOVE "P-090-01"        TO CASE-ID.
            MOVE "������" TO G-01.
            MOVE ALL "��"   TO W-INTO.
            MOVE 1 TO W-PTR.
            STRING G-01 INTO W-INTO
                        WITH POINTER W-PTR.
            IF W-INTO = "�������@�@����������"
               AND W-PTR = 6
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
            
            MOVE "P-090-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO.
            MOVE 5 TO W-PTR.
            STRING "������" INTO W-INTO
                        WITH POINTER W-PTR.
            IF W-INTO = "��������������������"
               AND W-PTR = 8
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *�P�[�X10�F��Ӗ��P�A�萔1�ADELIMITED BY SIZE�AWITH POINTER
            MOVE "P-100-01"        TO CASE-ID.
            MOVE "����������" TO G-01.
            MOVE ALL "��"   TO W-INTO.
            MOVE 3 TO W-PTR.
            STRING G-01 DELIMITED BY SIZE
                        INTO W-INTO
                        WITH POINTER W-PTR.
            IF W-INTO = "��������������������"
               AND W-PTR = 8
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
            
            MOVE "P-100-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO.
            MOVE 5 TO W-PTR.
            STRING "����������" DELIMITED BY SIZE
                        INTO W-INTO
                        WITH POINTER W-PTR.
            IF W-INTO = "��������������������"
               AND W-PTR = 10
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *�P�[�X11�F��Ӗ��P�A�萔1�ADELIMITED BY �萔�Q�AWITH POINTER
            MOVE "P-110-01"        TO CASE-ID.
            MOVE "����������" TO G-01.
            MOVE ALL "��"   TO W-INTO.
            MOVE 3 TO W-PTR.
            STRING G-01 DELIMITED BY "��"
                        INTO W-INTO
                        WITH POINTER W-PTR.
            IF W-INTO = "��������������������"
               AND W-PTR = 7
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
            
            MOVE "P-110-01"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO.
            MOVE 2 TO W-PTR.
            STRING "����������" DELIMITED BY "��"
                        INTO W-INTO
                        WITH POINTER W-PTR.
            IF W-INTO = "��������������������"
               AND W-PTR = 6
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *�P�[�X12�F��Ӗ��P�A�萔1�ADELIMITED BY �\�Ӓ萔.ALL�萔�AWITH POINTER
            MOVE "P-120-01"        TO CASE-ID.
            MOVE "������" TO G-01.
            MOVE ALL "��"   TO W-INTO.
            MOVE 7 TO W-PTR.
            STRING G-01 DELIMITED BY SPACES
                        INTO W-INTO
                        WITH POINTER W-PTR.
            IF W-INTO = "��������������������"
               AND W-PTR = 10
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
            
            MOVE "P-120-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO.
            MOVE 1 TO W-PTR.
      *     STRING "�����h�h�h" DELIMITED BY ALL QUOTE
            STRING "�����h�h�h" DELIMITED BY     QUOTE
                        INTO W-INTO
                        WITH POINTER W-PTR.
            IF W-INTO = "��������������������"
               AND W-PTR = 3
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
            *>ACCEPT OMIT-WK.
      *�P�[�X13�F��Ӗ��P�A�萔1�ADELIMITED BY ��Ӗ��Q�A.ALL ��Ӗ��Q�AWITH POINTER
            MOVE "P-130-01"        TO CASE-ID.
            MOVE "������" TO G-01.
            MOVE ALL "��"   TO W-INTO.
            MOVE SPACE TO G-02-1.
            MOVE 7 TO W-PTR.
            STRING G-01 DELIMITED BY G-02-1
                        INTO W-INTO
                        WITH POINTER W-PTR.
            IF W-INTO = "��������������������"
               AND W-PTR = 10
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
            
            MOVE "P-130-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO.
            MOVE QUOTE TO G-02-1.
            MOVE 1 TO W-PTR.
      *     STRING "�����h�h�h" DELIMITED BY ALL G-02-1
            STRING "�����h�h�h" DELIMITED BY     G-02-1
                        INTO W-INTO
                        WITH POINTER W-PTR.
            IF W-INTO = "��������������������"
               AND W-PTR = 3
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *�P�[�X14�F��Ӗ��P�A�萔1�ADELIMITED BY 2�����萔�Q�AWITH POINTER
            MOVE "P-140-01"        TO CASE-ID.
            MOVE "����������" TO G-01.
            MOVE ALL "��"   TO W-INTO.
            MOVE 4 TO W-PTR.
            STRING G-01 DELIMITED BY "����"
                        INTO W-INTO
                        WITH POINTER W-PTR.
            IF W-INTO = "��������������������"
               AND W-PTR = 6
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
            
            MOVE "P-140-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO.
            MOVE 6 TO W-PTR.
            STRING "����������" DELIMITED BY "����"
                        INTO W-INTO
                        WITH POINTER W-PTR.
            IF W-INTO = "��������������������"
               AND W-PTR = 11
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *�P�[�X15�F��Ӗ��P�A�萔1�ADELIMITED BY ALL 2�����萔�AWITH POINTER
            MOVE "P-150-01"        TO CASE-ID.
            MOVE "����������" TO G-01.
            MOVE ALL "��"   TO W-INTO.
            MOVE 5 TO W-PTR.
      *     STRING G-01 DELIMITED BY ALL "����"
            STRING G-01 DELIMITED BY     "����"
                        INTO W-INTO
                        WITH POINTER W-PTR.
            IF W-INTO = "��������������������"
               AND W-PTR = 7
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
            
            MOVE "P-150-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO.
            MOVE 8 TO W-PTR.
      *     STRING "����������" DELIMITED BY ALL "����"
            STRING "����������" DELIMITED BY     "����"
                        INTO W-INTO
                        WITH POINTER W-PTR.
            IF W-INTO = "��������������������"
               AND W-PTR = 11
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *�P�[�X16�F��Ӗ��P�A�萔1�ADELIMITED BY ��Ӗ��Q�AALL�@��Ӗ��Q�AWITH POINTER
            MOVE "P-160-01"        TO CASE-ID.
            MOVE "����������" TO G-01.
            MOVE ALL "��"   TO W-INTO.
            MOVE "����" TO G-02-2.
            MOVE 5 TO W-PTR.
            STRING G-01 DELIMITED BY G-02-2
                        INTO W-INTO
                        WITH POINTER W-PTR.
            IF W-INTO = "��������������������"
               AND W-PTR = 8
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
            
            MOVE "P-160-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO.
            MOVE "����" TO G-02-1.
            MOVE 8 TO W-PTR.
      *     STRING "����������" DELIMITED BY ALL G-02-2
            STRING "����������" DELIMITED BY     G-02-2
                        INTO W-INTO
                        WITH POINTER W-PTR.
            IF W-INTO = "��������������������"
               AND W-PTR = 11
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *�P�[�X17�F��Ӗ��P�A�萔1�A�J��Ԃ��ADELIMITED�w��Ȃ��AWITH POINTER
            MOVE "P-170-01"        TO CASE-ID.
            MOVE "������" TO G-01-1.
            MOVE "������" TO G-01-2.
            MOVE ALL "��"   TO W-INTO.
            MOVE 1 TO W-PTR.
            STRING G-01-1 G-01-2  INTO W-INTO
                        WITH POINTER W-PTR.
            IF W-INTO = "�������@�@�������@�@"
               AND W-PTR = 11
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
            
            MOVE "P-170-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO.
            MOVE 5 TO W-PTR.
            STRING "������"  "������" INTO W-INTO
                        WITH POINTER W-PTR.
            IF W-INTO = "��������������������"
               AND W-PTR = 11
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *�P�[�X18�F��Ӗ��P�A�萔1�A�J��Ԃ��ADELIMITED BY SIZE�AWITH POINTER
            MOVE "P-180-01"        TO CASE-ID.
            MOVE "����������" TO G-01-1.
            MOVE "����������" TO G-01-2.
            MOVE ALL "��"   TO W-INTO-2.
            MOVE 3 TO W-PTR.
            STRING G-01-1 DELIMITED BY SIZE
                   G-01-2 DELIMITED BY SIZE
                        INTO W-INTO-2
                        WITH POINTER W-PTR.
            IF W-INTO-2 = "����������������������������������������"
               AND W-PTR = 13
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-PTR " " W-INTO-2
            END-IF.
            
            MOVE "P-180-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO-2.
            MOVE 5 TO W-PTR.
            STRING "����������" DELIMITED BY SIZE
                   "����������" DELIMITED BY SIZE
                        INTO W-INTO-2
                        WITH POINTER W-PTR.
            IF W-INTO-2 = "����������������������������������������"
               AND W-PTR = 15
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *�P�[�X19�F��Ӗ��P�A�萔1�A�J��Ԃ��ADELIMITED BY �萔�Q�AWITH POINTER
            MOVE "P-190-01"        TO CASE-ID.
            MOVE "����������" TO G-01-1.
            MOVE "����������" TO G-01-2.
            MOVE ALL "��"   TO W-INTO-2.
            MOVE 3 TO W-PTR.
            STRING G-01-1 DELIMITED BY "��"
                   G-01-2 DELIMITED BY "��"
                        INTO W-INTO-2
                        WITH POINTER W-PTR.
            IF W-INTO-2 = "����������������������������������������"
               AND W-PTR = 8
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
            
            MOVE "P-190-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO-2.
            MOVE 2 TO W-PTR.
            STRING "����������" DELIMITED BY "��"
                   "����������" DELIMITED BY "��"
                        INTO W-INTO-2
                        WITH POINTER W-PTR.
            IF W-INTO-2 = "����������������������������������������"
               AND W-PTR = 7
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *�P�[�X20�F��Ӗ��P�A�萔1�A�J��Ԃ��ADELIMITED BY �\�Ӓ萔.ALL�萔�AWITH POINTER
            MOVE "P-200-01"        TO CASE-ID.
            MOVE "������" TO G-01-1.
            MOVE "������" TO G-01-2.
            MOVE ALL "��"   TO W-INTO-2.
            MOVE 7 TO W-PTR.
            STRING G-01-1 DELIMITED BY SPACES
                   G-01-2 DELIMITED BY SPACES
                        INTO W-INTO-2
                        WITH POINTER W-PTR.
            IF W-INTO-2 = "����������������������������������������"
               AND W-PTR = 13
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
            
            MOVE "P-200-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO-2.
            MOVE 1 TO W-PTR.
      *     STRING "�����h�h�h" DELIMITED BY ALL QUOTE
      *            "�������h�h" DELIMITED BY ALL QUOTE
            STRING "�����h�h�h" DELIMITED BY     QUOTE
                   "�������h�h" DELIMITED BY     QUOTE
                        INTO W-INTO-2
                        WITH POINTER W-PTR.
            IF W-INTO-2 = "����������������������������������������"
               AND W-PTR = 6
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:"
            END-IF.
      *�P�[�X21�F��Ӗ��P�A�萔1�A�J��Ԃ��ADELIMITED BY ��Ӗ��Q�A.ALL�@��Ӗ��Q�AWITH POINTER
            MOVE "P-210-01"        TO CASE-ID.
            MOVE "������" TO G-01-1.
            MOVE "������" TO G-01-2.
            MOVE ALL "��"   TO W-INTO-2.
            MOVE SPACE TO G-02-1.
            MOVE 7 TO W-PTR.
            STRING G-01-1 DELIMITED BY G-02-1
                   G-01-2 DELIMITED BY G-02-1
                        INTO W-INTO-2
                        WITH POINTER W-PTR.
            IF W-INTO-2 = "����������������������������������������"
               AND W-PTR = 13
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-PTR " " W-INTO-2
            END-IF.
            
            MOVE "P-210-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO-2.
            MOVE QUOTE TO G-02-1.
            MOVE 1 TO W-PTR.
      *     STRING "�����h�h�h" DELIMITED BY ALL G-02-1
      *            "����������" DELIMITED BY ALL G-02-1
            STRING "�����h�h�h" DELIMITED BY     G-02-1
                   "����������" DELIMITED BY     G-02-1
                        INTO W-INTO-2
                        WITH POINTER W-PTR.
            IF W-INTO-2 = "����������������������������������������"
               AND W-PTR = 8
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-PTR " " W-INTO-2
            END-IF.
      *�P�[�X22�F��Ӗ��P�A�萔1�A�J��Ԃ��ADELIMITED BY 2�����萔�Q�AWITH POINTER
            MOVE "P-220-01"        TO CASE-ID.
            MOVE "����������" TO G-01-1.
            MOVE "����������" TO G-01-2.
            MOVE ALL "��"   TO W-INTO-2.
            MOVE 4 TO W-PTR.
            STRING G-01-1 DELIMITED BY "����"
                   G-01-2 DELIMITED BY "����"
                        INTO W-INTO-2
                        WITH POINTER W-PTR.
            IF W-INTO-2 = "����������������������������������������"
               AND W-PTR = 9
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-PTR " " W-INTO-2
            END-IF.
            
            MOVE "P-220-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO-2.
            MOVE 6 TO W-PTR.
            STRING "����������" DELIMITED BY "����"
                   "����������" DELIMITED BY "����"
                        INTO W-INTO-2
                        WITH POINTER W-PTR.
            IF W-INTO-2 = "����������������������������������������"
               AND W-PTR = 14
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-PTR " " W-INTO-2
            END-IF.
      *�P�[�X23�F��Ӗ��P�A�萔1�A�J��Ԃ��ADELIMITED BY ALL 2�����萔�AWITH POINTER
            MOVE "P-230-01"        TO CASE-ID.
            MOVE "����������" TO G-01-1.
            MOVE "����������" TO G-01-2.
            MOVE ALL "��"   TO W-INTO-2.
            MOVE 5 TO W-PTR.
      *     STRING G-01-1 DELIMITED BY ALL "����"
      *            G-01-2 DELIMITED BY ALL "����"
            STRING G-01-1 DELIMITED BY     "����"
                   G-01-2 DELIMITED BY     "����"
                        INTO W-INTO-2
                        WITH POINTER W-PTR.
            IF W-INTO-2 = "����������������������������������������"
               AND W-PTR = 8
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-PTR " " W-INTO-2
            END-IF.
            
            MOVE "P-230-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO-2.
            MOVE 8 TO W-PTR.
      *     STRING "����������" DELIMITED BY ALL "����"
      *            "����������" DELIMITED BY ALL "����"
            STRING "����������" DELIMITED BY     "����"
                   "����������" DELIMITED BY     "����"
                        INTO W-INTO-2
                        WITH POINTER W-PTR.
            IF W-INTO-2 = "����������������������������������������"
               AND W-PTR = 11
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-PTR " " W-INTO-2
            END-IF.
      *�P�[�X24�F��Ӗ��P�A�萔1�A�J��Ԃ��ADELIMITED BY ��Ӗ��Q�AALL�@��Ӗ��Q�AWITH POINTER
            MOVE "P-240-01"        TO CASE-ID.
            MOVE "����������" TO G-01-1.
            MOVE "����������" TO G-01-2.
            MOVE ALL "��"   TO W-INTO-2.
            MOVE "����" TO G-02-2.
            MOVE 5 TO W-PTR.
            STRING G-01-1 DELIMITED BY G-02-2
                   G-01-2 DELIMITED BY G-02-2
                        INTO W-INTO-2
                        WITH POINTER W-PTR.
            IF W-INTO-2 = "����������������������������������������"
               AND W-PTR = 13
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-PTR " " W-INTO-2
            END-IF.
            
            MOVE "P-240-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO-2.
            MOVE "����" TO G-02-2.
            MOVE 8 TO W-PTR.
      *     STRING "����������" DELIMITED BY ALL G-02-2
      *            "����������" DELIMITED BY ALL G-02-2
            STRING "����������" DELIMITED BY     G-02-2
                   "����������" DELIMITED BY     G-02-2
                        INTO W-INTO-2
                        WITH POINTER W-PTR.
            IF W-INTO-2 = "����������������������������������������"
               AND W-PTR = 15
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-PTR " " W-INTO-2
            END-IF.
      *�P�[�X25�FON OVERFLOW��
            MOVE "P-250-01"        TO CASE-ID.
            MOVE "����������" TO G-01-1.
            MOVE "����������" TO G-01-2.
            MOVE ALL "��"   TO W-INTO-2.
            MOVE "����" TO G-02-2.
            MOVE 5 TO W-PTR.
            MOVE 0 TO OVER-SW.
            STRING G-01-1 DELIMITED BY G-02-2
                   G-01-2 DELIMITED BY G-02-2
                        INTO W-INTO-2
                        WITH POINTER W-PTR
                   ON OVERFLOW MOVE 1 TO OVER-SW
            END-STRING.
            IF W-INTO-2 = "����������������������������������������"
               AND OVER-SW = 0 AND W-PTR = 13
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-PTR " " W-INTO-2
            END-IF.
            
            MOVE "P-250-02"        TO CASE-ID.
            MOVE ALL "��"   TO W-INTO-2.
            MOVE "����" TO G-02-2.
            MOVE 15 TO W-PTR.
            MOVE 0 TO OVER-SW.
            STRING "����������" DELIMITED BY G-02-2
                   "����������" DELIMITED BY G-02-2
                        INTO W-INTO-2
                        WITH POINTER W-PTR
                   ON OVERFLOW MOVE 1 TO OVER-SW
            END-STRING.
            IF W-INTO-2 = "����������������������������������������"
               AND OVER-SW = 1 AND W-PTR = 21
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-PTR " " W-INTO-2
            END-IF.
      ***
            DISPLAY "TEST END    (EX5-6A)".
            *>ACCEPT OMIT-WK.
            GOBACK
            .

