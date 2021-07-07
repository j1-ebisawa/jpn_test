      ******************************************************************
      *    �e�X�g�P�[�X�F5-4C
      *    �v���O�������F���{�ꉻ�e�X�g �i�葱�����jINSPECT����
      *    �����T�v    �FINSPECT���߂����������s����邩���`�F�b�N����B
      *  --------------------------------------------------------------
      *   �e�X�g�P�[�X:�S�W�`�U�P
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           EX5-4C.
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
       01  CASE-ID            PIC X(10).
       01  W-TALLY  PIC 999.
       01  G-01     PIC N(10).
       01  GE-01    PIC NN/NNNN/NN.
       01  G-03-1   PIC N.
       01  G-03-2   PIC NN.
       01  G-04-1   PIC N.
       01  G-04-2   PIC NN.
       01  G-05-1   PIC N.
       01  G-05-2   PIC NN.
       01  G-06-1   PIC N.
       01  G-06-2   PIC NN.
       01  G-07-1   PIC N.
       01  G-07-2   PIC NN.
       01  G-08-1   PIC N.
       01  G-08-2   PIC NN.

      ******************************************************************
       PROCEDURE             DIVISION.
      ******************************************************************
       MAIN                  SECTION.
       P-010. 
            DISPLAY "TEST START (EX5-4C)".
      *�P�[�X48.��Ӗ��P�A�萔5�A�萔6�iCONVERTING,ALL�w��j
            MOVE "P-480-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            INSPECT G-01 CONVERTING "��" TO "��".
            IF G-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-480-02"        TO CASE-ID.
            INSPECT GE-01 CONVERTING "��" TO "��".
            IF GE-01 = "�����^���������^����"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *�P�[�X49�F��Ӗ��P�A�萔5�A�萔6�A�萔7�iCONVERTING,BEFORE�w��j
            MOVE "P-490-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            INSPECT G-01 CONVERTING "��" TO "��" BEFORE "��".
            IF G-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-490-02"        TO CASE-ID.
            INSPECT GE-01 CONVERTING "��" TO "��" BEFORE "��".
            IF GE-01 = "�����^���������^����"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *�P�[�X50�F��Ӗ��P�A�萔5�A�萔6�A�萔�V�iCONVERTING,AFTER�w��j
            MOVE "P-500-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            INSPECT G-01 CONVERTING "��" TO "��" AFTER "��".
            IF G-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-500-02"        TO CASE-ID.
            INSPECT GE-01 CONVERTING "��" TO "��"  AFTER "��".
            IF GE-01 = "�����^���������^����"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *�P�[�X51�F��Ӗ��P�A��Ӗ�6�A��Ӗ��V�iCONVERTING�j
            MOVE "P-510-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            MOVE "��" TO G-06-1.
            MOVE "��" TO G-07-1.
            
            INSPECT G-01 CONVERTING G-06-1 TO G-07-1.
            IF G-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
            
            MOVE "P-510-02"        TO CASE-ID.
            INSPECT GE-01 CONVERTING G-06-1 TO G-07-1.
            IF GE-01 = "�����^���������^����"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *�P�[�X52�F��Ӗ��P�A��Ӗ�6�A��Ӗ�7�A��Ӗ�8�iCONVERTING,BEFORE�w��j
            MOVE "P-520-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            MOVE "��" TO G-06-1.
            MOVE "��" TO G-07-1
            MOVE "��" TO G-08-1.
            
            INSPECT G-01 CONVERTING G-06-1 TO G-07-1 BEFORE G-08-1.
            IF G-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-520-02"        TO CASE-ID.
            INSPECT GE-01 CONVERTING G-06-1 TO G-07-1 BEFORE G-08-1.
            IF GE-01 = "�����^���������^����"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *�P�[�X53�F��Ӗ��P�A��Ӗ�6�A��Ӗ�7�A��Ӗ�8�iCONVERTING,AFTER�w��j
            MOVE "P-530-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            MOVE "��" TO G-06-1.
            MOVE "��" TO G-07-1
            MOVE "��" TO G-08-1.
            
            INSPECT G-01 CONVERTING G-06-1 TO G-07-1 AFTER G-08-1.
            IF G-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-530-02"        TO CASE-ID.
            INSPECT GE-01 CONVERTING G-06-1 TO G-07-1 AFTER G-08-1.
            IF GE-01 = "�����^���������^����" 
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *�P�[�X54�F��Ӗ��P�A�萔3�A�萔4�A�萔7�iCONVERTING,2�����w��,BEFORE�w��j
            MOVE "P-540-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.

            INSPECT G-01 CONVERTING "����" TO "����" BEFORE "����".
            IF G-01 = "��������������������"                              *>20111107
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-540-02"        TO CASE-ID.
            INSPECT GE-01 CONVERTING  "����" TO "����" BEFORE "����".
            IF GE-01 = "�����^���������^����"                             *>20111107
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *�P�[�X55�F��Ӗ��P�A��Ӗ�4�A��Ӗ�5�A��Ӗ�8�iCONVERTING,2�����w��,AFTER�w��j
            MOVE "P-550-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            MOVE "����" TO G-04-2.
            MOVE "����" TO G-05-2
            MOVE "����" TO G-08-2.

            INSPECT G-01 CONVERTING G-04-2 TO G-05-2 AFTER G-08-2.
            IF G-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-540-02"        TO CASE-ID.
            INSPECT GE-01 CONVERTING G-04-2 TO G-05-2 AFTER G-08-2.
            IF GE-01 = "�����^���������^����"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
            
      *�P�[�X56�F�J��Ԃ��\��1
            MOVE "P-560-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            
            INSPECT G-01 REPLACING ALL "��" BY "��"
                                   ALL "��" BY "��".
            IF G-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *�P�[�X57�F�J��Ԃ��\��2
            MOVE "P-570-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            
            INSPECT G-01 REPLACING ALL "��" BY "��"
                                   AFTER "��" BEFORE "��".
            IF G-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *�P�[�X58�F�J��Ԃ��\���R
            MOVE "P-580-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            
            INSPECT G-01 TALLYING W-TALLY FOR ALL "��" AFTER "��"
                         REPLACING ALL "����" BY "����" BEFORE "����".
            IF G-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *�P�[�X59�F���̑��P
            MOVE "P-590-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            
            INSPECT G-01 REPLACING ALL "������" BY "������"
            IF G-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *�P�[�X60�F���̑��Q�i�\�Ӓ萔�j
            MOVE "P-600-01"        TO CASE-ID.
            MOVE "�P�Q�R�S�T�U�V�W�X�O" TO G-01.
            
            INSPECT G-01 REPLACING ALL "�T�U" BY SPACE
            IF G-01 = "�P�Q�R�S�@�@�V�W�X�O"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *�P�[�X61�F���̑��R�i�\�Ӓ萔�j
            MOVE "P-610-01"        TO CASE-ID.
            MOVE "�P�Q�R�S�T�U�V�W�X�O" TO G-01.
            
            INSPECT G-01 REPLACING ALL "�T" BY QUOTE
            IF G-01 = "�P�Q�R�S�h�U�V�W�X�O"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.

      *
            DISPLAY "TEST END   (EX5-4C)".
            *>ACCEPT OMIT-WK.
            GOBACK
            .

