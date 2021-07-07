      ******************************************************************
      *    �e�X�g�P�[�X�F5-4B
      *    �v���O�������F���{�ꉻ�e�X�g �i�葱�����jINSPECT����
      *    �����T�v    �FINSPECT���߂����������s����邩���`�F�b�N����B
      *  --------------------------------------------------------------
      *   �e�X�g�P�[�X:�Q�Q�`�S�V
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           EX5-4B.
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
       01  G-08-1   PIC N.
       01  G-08-2   PIC NN.

      ******************************************************************
       PROCEDURE             DIVISION.
      ******************************************************************
       MAIN                  SECTION.
       P-010. 
            display "TEST START(EX5-4B)".
      *�P�[�X22.��Ӗ��P�A�萔4�iREPLACING,CHARACTERS�w��j
            MOVE "P-220-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            
            INSPECT G-01 REPLACING CHARACTERS BY "��".
            IF G-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-220-02"        TO CASE-ID.
            INSPECT GE-01 REPLACING CHARACTERS BY "��".
            IF GE-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *�P�[�X23.��Ӗ��P�A�萔3�A�萔4�iREPLACING,ALL�w��j
            MOVE "P-230-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            INSPECT G-01 REPLACING ALL "��" BY "��".
            IF G-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-230-02"        TO CASE-ID.
            INSPECT GE-01 REPLACING ALL "��" BY "��".
            IF GE-01 = "�����^���������^����"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *�P�[�X24�F��Ӗ��P�A�萔3�A�萔4�iREPLACING,LEADING�w��j
            MOVE "P-240-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            INSPECT G-01 REPLACING LEADING "��" BY "��".
            IF G-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-240-02"        TO CASE-ID.
            INSPECT GE-01 REPLACING LEADING "��" BY "��".
            IF GE-01 = "�����^���������^����"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *�P�[�X25�F��Ӗ��P�A�萔3�A�萔4�iREPLACING,TRAILING�w��j
            MOVE "P-250-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            INSPECT G-01 REPLACING TRAILING "��" BY "��".
            IF G-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-250-02"        TO CASE-ID.
            INSPECT GE-01 REPLACING TRAILING "��" BY "��".
            IF GE-01 = "�����^���������^����"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *�P�[�X26�F��Ӗ��P�A�萔3�A�萔4�iREPLACING,FIRST�w��j
            MOVE "P-260-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            INSPECT G-01 REPLACING FIRST "��" BY "��".
            IF G-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-260-02"        TO CASE-ID.
            INSPECT GE-01 REPLACING FIRST "��" BY "��".
            IF GE-01 = "�����^���������^����"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *�P�[�X27�F��Ӗ��P�A�萔3�A�萔4�iREPLACING,ALL,2�����w��j
            MOVE "P-270-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            INSPECT G-01 REPLACING ALL "����" BY "����".
            IF G-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-270-02"        TO CASE-ID.
            INSPECT GE-01 REPLACING ALL "����" BY "����".
            IF GE-01 = "�����^���������^����"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *�P�[�X28�F��Ӗ��P�A�萔3�A�萔4�iREPLACING,CHARACTERS,BEFORE�w��j
            MOVE "P-280-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            INSPECT G-01 REPLACING CHARACTERS BY "��" BEFORE "��".
            IF G-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-280-02"        TO CASE-ID.
            INSPECT GE-01 REPLACING CHARACTERS BY "��" BEFORE "��".
            IF GE-01 = "���������������^����"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *�P�[�X29�F��Ӗ��P�A�萔3�A�萔4�A�萔�V�iREPLACING,ALL,AFTER�w��j
            MOVE "P-290-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            INSPECT G-01 REPLACING ALL "��" BY "��" AFTER "��".
            IF G-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-290-02"        TO CASE-ID.
            INSPECT GE-01 REPLACING ALL "��" BY "��"  AFTER "��".
            IF GE-01 = "�����^���������^����"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.

      *�P�[�X30�F��Ӗ��P�A�萔3�A�萔4�A�萔�V�iREPLACING,LEADING,AFTER�w��j
            MOVE "P-300-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.

            INSPECT G-01 REPLACING LEADING "��" BY "��" AFTER "��".
            IF G-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-300-02"        TO CASE-ID.
            INSPECT GE-01 REPLACING LEADING "��" BY "��" AFTER "��".
            IF GE-01 = "�����^���������^����"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *�P�[�X31�F��Ӗ��P�A�萔3�A�萔4�A�萔�V�iREPLACING,TRAILING,BEFORE�w��j
            MOVE "P-310-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            INSPECT G-01 REPLACING TRAILING "��" BY "��"  BEFORE "��".
            IF G-01 ="��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-310-02"        TO CASE-ID.
            INSPECT GE-01 REPLACING TRAILING "��" BY "��" BEFORE "��".
            IF GE-01 = "�����^���������^����"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *�P�[�X32�F��Ӗ��P�A�萔3�A�萔4�A�萔�V�iREPLACING,FIRST,AFTER�w��j
            MOVE "P-320-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            INSPECT G-01 REPLACING FIRST "��" BY "��"  AFTER "��".
            IF G-01 ="��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-320-02"        TO CASE-ID.
            INSPECT GE-01 REPLACING FIRST "��" BY "��" AFTER "��".
            IF GE-01 = "�����^���������^����"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *�P�[�X33�F��Ӗ��P�A�萔3�A�萔4�A�萔�V�iREPLACING,ALL,2�����w��,BEFORE�j
            MOVE "P-330-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            INSPECT G-01 REPLACING ALL "����" BY "����" BEFORE "����".
            IF G-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-330-02"        TO CASE-ID.
            INSPECT GE-01 REPLACING ALL "����" BY "����"  BEFORE "����".
            IF GE-01 = "�����^���������^����"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *�P�[�X34�F��Ӗ��P�A�萔3�A�萔4�A�萔�V�iREPLACING,ALL,2�����w��,AFTER�j
            MOVE "P-340-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            INSPECT G-01 REPLACING ALL "����" BY "����" AFTER "����".
            IF G-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-340-02"        TO CASE-ID.
            INSPECT GE-01 REPLACING ALL "����" BY "����"  AFTER "����".
            IF GE-01 = "�����^���������^����"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.

      *�P�[�X35.��Ӗ��P�A��Ӗ�5�iREPLACING,CHARACTERS�w��j
            MOVE "P-350-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            MOVE "��" TO G-05-1.
            
            INSPECT G-01 REPLACING CHARACTERS BY G-05-1.
            IF G-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      
            MOVE "P-350-02"        TO CASE-ID.
            INSPECT GE-01 REPLACING CHARACTERS BY G-05-1.
            IF G-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *�P�[�X36.��Ӗ��P�A��Ӗ�4�A��Ӗ�5�iREPLACING,ALL�w��j
            MOVE "P-360-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            MOVE "��" TO G-04-1.
            MOVE "��" TO G-05-1.
            
            INSPECT G-01 REPLACING ALL G-04-1 BY G-05-1.
            IF G-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-360-02"        TO CASE-ID.
            INSPECT GE-01 REPLACING ALL G-04-1 BY G-05-1.
            IF GE-01 = "�����^���������^����"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *�P�[�X37�F��Ӗ��P�A��Ӗ�4�A��Ӗ�5�iREPLACING,LEADING�w��j
            MOVE "P-370-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            MOVE "��" TO G-04-1.
            MOVE "��" TO G-05-1.
            
            INSPECT G-01 REPLACING LEADING G-04-1 BY G-05-1.
            IF G-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-370-02"        TO CASE-ID.
            INSPECT GE-01 REPLACING LEADING G-04-1 BY G-05-1.
            IF GE-01 = "�����^���������^����"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *�P�[�X38�F��Ӗ��P�A��Ӗ�4�A��Ӗ�5�iREPLACING,TRAILING�w��j
            MOVE "P-380-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            MOVE "��" TO G-04-1.
            MOVE "��" TO G-05-1.
            
            INSPECT G-01 REPLACING TRAILING G-04-1 BY G-05-1.
            IF G-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-380-02"        TO CASE-ID.
            INSPECT GE-01 REPLACING TRAILING G-04-1 BY G-05-1.
            IF GE-01 = "�����^���������^����"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *�P�[�X39�F��Ӗ��P�A��Ӗ�4�A��Ӗ�5�iREPLACING,FIRST�w��j
            MOVE "P-390-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            MOVE "��" TO G-04-1.
            MOVE "��" TO G-05-1.
            
            INSPECT G-01 REPLACING FIRST G-04-1 BY G-05-1.
            IF G-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-390-02"        TO CASE-ID.
            INSPECT GE-01 REPLACING FIRST G-04-1 BY G-05-1.
            IF GE-01 = "�����^���������^����"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *�P�[�X40�F��Ӗ��P�A��Ӗ�4�A��Ӗ�5(REPLACING,ALL,2�����w��j
            MOVE "P-400-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            MOVE "����" TO G-04-2.
            MOVE "����" TO G-05-2.
            
            INSPECT G-01 REPLACING ALL G-04-2 BY G-05-2.
            IF G-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-400-02"        TO CASE-ID.
            INSPECT GE-01 REPLACING ALL G-04-2 BY G-05-2.
            IF GE-01 = "�����^���������^����"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *�P�[�X41�F��Ӗ��P�A��Ӗ�5�A��Ӗ�8�iREPLACING,CHARACTERS,BEFORE�w��j
            MOVE "P-410-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            MOVE "��" TO G-05-1.
            MOVE "��" TO G-08-1.
            
            INSPECT G-01 REPLACING CHARACTERS BY G-05-1 BEFORE G-08-1.
            IF G-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-410-02"        TO CASE-ID.
            INSPECT GE-01 REPLACING CHARACTERS BY G-05-1 BEFORE G-08-1.
            IF GE-01 = "���������������^����"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *�P�[�X42�F��Ӗ��P�A��Ӗ�4�A��Ӗ�5�A��Ӗ�8�iREPLACING,ALL,AFTER�w��j
            MOVE "P-420-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            MOVE "��" TO G-04-1.
            MOVE "��" TO G-05-1.
            MOVE "��" TO G-08-1.
            
            INSPECT G-01 REPLACING ALL G-04-1 BY G-05-1 AFTER G-08-1.
            IF G-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-420-02"        TO CASE-ID.
            INSPECT GE-01 REPLACING ALL G-04-1 BY G-05-1 AFTER G-08-1.
            IF GE-01 = "�����^���������^����" 
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *�P�[�X43�F��Ӗ��P�A��Ӗ�4�A��Ӗ�5�A��Ӗ�8�iREPLACING,LEADING,AFTER�w��j
            MOVE "P-430-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            MOVE "��" TO G-04-1.
            MOVE "��" TO G-05-1.
            MOVE "��" TO G-08-1.

            INSPECT G-01 REPLACING 
                         LEADING G-04-1 BY G-05-1 AFTER G-08-1.
            IF G-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-430-02"        TO CASE-ID.
            INSPECT GE-01 REPLACING 
                          LEADING G-04-1 BY G-05-1 AFTER G-08-1.
            IF GE-01 = "�����^���������^����"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *�P�[�X44�F��Ӗ��P�A��Ӗ�4�A��Ӗ�5�A��Ӗ�8�iREPLACING,TRAILING,BEFORE�w��j
            MOVE "P-440-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            MOVE "��" TO G-04-1.
            MOVE "��" TO G-05-1.
            MOVE "��" TO G-08-1.
            
            INSPECT G-01 REPLACING
                         TRAILING G-04-1 BY G-05-1  BEFORE G-08-1.
            IF G-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-440-02"        TO CASE-ID.
            INSPECT GE-01 REPLACING
                          TRAILING G-04-1 BY G-05-1  BEFORE G-08-1
            IF GE-01 = "�����^���������^����"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *�P�[�X45�F��Ӗ��P�A��Ӗ�4�A��Ӗ�5�A��Ӗ�8�iREPLACING,FIRST,AFTER�w��j
            MOVE "P-450-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            MOVE "��" TO G-04-1.
            MOVE "��" TO G-05-1.
            MOVE "��" TO G-08-1.
            
            INSPECT G-01 REPLACING 
                         FIRST G-04-1 BY G-05-1  AFTER G-08-1.
            IF G-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-450-02"        TO CASE-ID.
            INSPECT GE-01 REPLACING
                          FIRST G-04-1 BY G-05-1  AFTER G-08-1
            IF GE-01 = "�����^���������^����"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *�P�[�X46�F��Ӗ��P�A��Ӗ�4�A��Ӗ�5�A��Ӗ�8�i�iREPLACING,ALL,2�����w��,BEFORE�j
            MOVE "P-460-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            MOVE "����" TO G-04-2.
            MOVE "����" TO G-05-2.
            MOVE "����" TO G-08-2.
            
            INSPECT G-01 REPLACING ALL G-04-2 BY G-05-2 BEFORE G-08-2.
            IF G-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-460-02"        TO CASE-ID.
            MOVE 0 TO W-TALLY.
            INSPECT GE-01 REPLACING ALL G-04-2 BY G-05-2 BEFORE G-08-2.
            IF GE-01 = "�����^���������^����"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *�P�[�X47�F��Ӗ��P�A��Ӗ�4�A��Ӗ�5�A��Ӗ�8�iREPLACING,ALL,2�����w��,AFTER�j
            MOVE "P-470-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            MOVE "����" TO G-04-2.
            MOVE "����" TO G-05-2.
            MOVE "����" TO G-08-2.
            
            INSPECT G-01 REPLACING ALL G-04-2 BY G-05-2 AFTER G-08-2.
            IF G-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-470-02"        TO CASE-ID.
            INSPECT GE-01 REPLACING ALL G-04-2 BY G-05-2 AFTER G-08-2.
            IF GE-01 = "�����^���������^����"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *�P�[�X47�ǉ�.�F��Ӗ��P�A��Ӗ�4�A��Ӗ�5�A��Ӗ�8
      *    �iAFTER�ň�Ӗ�8��������Ȃ��Ƃ��j
      *    �iBEFORE�ň�Ӗ�8��������Ȃ��Ƃ��j
            MOVE "P-470-03"        TO CASE-ID.
            MOVE "�������������^������" TO G-01.
            MOVE "����������������" TO GE-01.
            MOVE "�^��" TO G-04-2.
            MOVE "����" TO G-05-2
            MOVE "�`�a" TO G-08-2.

            INSPECT G-01 REPLACING ALL G-04-2 BY G-05-2 AFTER G-08-2.
            IF G-01 = "�������������^������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-470-04"        TO CASE-ID.
            INSPECT GE-01 REPLACING ALL G-04-2 BY G-05-2 BEFORE G-08-2.
            IF GE-01 = "��������������������"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *
            display "TEST END  (EX5-4B)".
            *>ACCEPT OMIT-WK.
            GOBACK
            .

