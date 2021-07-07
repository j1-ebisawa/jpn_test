      ******************************************************************
      *    �e�X�g�P�[�X�F5-4A
      *    �v���O�������F���{�ꉻ�e�X�g �i�葱�����jINSPECT����
      *    �����T�v    �FINSPECT���߂����������s����邩���`�F�b�N����B
      *  --------------------------------------------------------------
      *   �e�X�g�P�[�X:�P�`�Q�P
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           EX5-4A.
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
            display "TEST START(EX5-4A)".
      *�P�[�X1.��Ӗ��P�iTALLYING,CHARACTERS�w��j
            MOVE "P-010-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            MOVE 0 TO W-TALLY.
            INSPECT G-01 TALLYING W-TALLY FOR CHARACTERS.
            IF W-TALLY = 10
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *
            MOVE "P-010-02"        TO CASE-ID.
            MOVE 0 TO W-TALLY.
            INSPECT GE-01 TALLYING W-TALLY FOR CHARACTERS.
            IF W-TALLY = 10
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *�P�[�X2.��Ӗ��P�A�萔�Q�iTALLYING,ALL�w��j
            MOVE "P-020-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "��������������" TO GE-01.
            MOVE 0 TO W-TALLY.
            INSPECT G-01 TALLYING W-TALLY FOR ALL "��".
            IF W-TALLY = 4
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *
            MOVE "P-020-02"        TO CASE-ID.
            MOVE 0 TO W-TALLY.
            INSPECT GE-01 TALLYING W-TALLY FOR ALL "��".
            IF W-TALLY = 2
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *�P�[�X3�F��Ӗ��P�A�萔�Q�iTALLYING,LEADING�w��j
            MOVE "P-030-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            MOVE 0 TO W-TALLY.
            INSPECT G-01 TALLYING W-TALLY FOR LEADING "��".
            IF W-TALLY = 6
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *
            MOVE "P-030-02"        TO CASE-ID.
            MOVE 0 TO W-TALLY.
            INSPECT GE-01 TALLYING W-TALLY FOR LEADING "��".
            IF W-TALLY = 2
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *�P�[�X4�F��Ӗ��P�A�萔�Q�iTALLYING,TRAILING�w��j
            MOVE "P-040-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            MOVE 0 TO W-TALLY.
            INSPECT G-01 TALLYING W-TALLY FOR TRAILING "��".
            IF W-TALLY = 3
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *
            MOVE "P-040-02"        TO CASE-ID.
            MOVE 0 TO W-TALLY.
            INSPECT GE-01 TALLYING W-TALLY FOR TRAILING "��".
            IF W-TALLY = 2
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *�P�[�X5�F��Ӗ��P�A�萔�Q�iTALLYING,ALL,2�����w��j
            MOVE "P-050-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            MOVE 0 TO W-TALLY.
            INSPECT G-01 TALLYING W-TALLY FOR ALL "����".
            IF W-TALLY = 2
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
       P-050-02.
      *
            MOVE "P-050-02"        TO CASE-ID.
            MOVE 0 TO W-TALLY.
            INSPECT GE-01 TALLYING W-TALLY FOR ALL "����".
            IF W-TALLY = 2
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *�P�[�X6�F��Ӗ��P�A�萔�V�iTALLYING,CHARACTERS,BEFORE�w��j
            MOVE "P-060-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            MOVE 0 TO W-TALLY.
            INSPECT G-01 TALLYING W-TALLY FOR CHARACTERS BEFORE "��".
            IF W-TALLY = 3
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *
            MOVE "P-060-02"        TO CASE-ID.
            MOVE 0 TO W-TALLY.
            INSPECT GE-01 TALLYING W-TALLY FOR CHARACTERS BEFORE "��".
            IF W-TALLY = 6
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *�P�[�X7�F��Ӗ��P�A�萔�Q�A�萔�V�iTALLYING,ALL,AFTER�w��j
            MOVE "P-070-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            MOVE 0 TO W-TALLY.
            INSPECT G-01 TALLYING W-TALLY FOR ALL "��" AFTER "��".
            IF W-TALLY = 2
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *
            MOVE "P-070-02"        TO CASE-ID.
            MOVE 0 TO W-TALLY.
            INSPECT GE-01 TALLYING W-TALLY FOR ALL "��" AFTER "��".
            IF W-TALLY = 1
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *�P�[�X8�F��Ӗ��P�A�萔�Q�A�萔�V�iTALLYING,LEADING,AFTER�w��j
            MOVE "P-080-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.

            MOVE 0 TO W-TALLY.
            INSPECT G-01 TALLYING W-TALLY FOR LEADING "��" AFTER "��".
            IF W-TALLY = 2
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *
            MOVE "P-080-02"        TO CASE-ID.
            MOVE 0 TO W-TALLY.
            INSPECT GE-01 TALLYING W-TALLY FOR LEADING "��" AFTER "��".
            IF W-TALLY = 2
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *�P�[�X9�F��Ӗ��P�A�萔�Q�A�萔�V�iTALLYING,TRAILING,BEFORE�w��j
            MOVE "P-090-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            MOVE 0 TO W-TALLY.
            INSPECT G-01 TALLYING W-TALLY FOR TRAILING "��" BEFORE "��".
            IF W-TALLY = 2
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *
            MOVE "P-090-02"        TO CASE-ID.
            MOVE 0 TO W-TALLY.
            INSPECT GE-01 TALLYING W-TALLY FOR
                                           TRAILING "��" BEFORE "��".
            IF W-TALLY = 1
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *�P�[�X10�F��Ӗ��P�A�萔�Q�A�萔�V�iTALLYING,ALL,2�����w��,BEFORE�j
            MOVE "P-100-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            MOVE 0 TO W-TALLY.
            INSPECT G-01 TALLYING W-TALLY FOR ALL "����" BEFORE "����".
            IF W-TALLY = 1
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *
            MOVE "P-100-02"        TO CASE-ID.
            MOVE 0 TO W-TALLY.
            INSPECT GE-01 TALLYING W-TALLY FOR ALL "����" BEFORE "�^��".
            IF W-TALLY = 0
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *�P�[�X11�F��Ӗ��P�A�萔�Q�A�萔�V�iTALLYING,ALL,2�����w��,AFTER�j
            MOVE "P-110-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.

            MOVE 0 TO W-TALLY.
            INSPECT G-01 TALLYING W-TALLY FOR ALL "����" AFTER "����".
            IF W-TALLY = 1
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *
            MOVE "P-110-02"        TO CASE-ID.
            MOVE 0 TO W-TALLY.
            INSPECT GE-01 TALLYING W-TALLY FOR ALL "����" AFTER "�^��".
            IF W-TALLY = 2
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *�P�[�X12.��Ӗ��P�A��Ӗ��R�iTALLYING,ALL�w��j
            MOVE "P-120-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "��������������" TO GE-01.
            MOVE "��" TO G-03-1.
            
            MOVE 0 TO W-TALLY.
            INSPECT G-01 TALLYING W-TALLY FOR ALL G-03-1.
            IF W-TALLY = 4
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *
            MOVE "P-120-02"        TO CASE-ID.
            MOVE 0 TO W-TALLY.
            INSPECT GE-01 TALLYING W-TALLY FOR ALL G-03-1.
            IF W-TALLY = 2
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *�P�[�X13�F��Ӗ��P�A��Ӗ�3�iTALLYING,LEADING�w��j
            MOVE "P-130-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            MOVE "��" TO G-03-1.
            
            MOVE 0 TO W-TALLY.
            INSPECT G-01 TALLYING W-TALLY FOR LEADING G-03-1.
            IF W-TALLY = 6
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *
            MOVE "P-130-02"        TO CASE-ID.
            MOVE 0 TO W-TALLY.
            INSPECT GE-01 TALLYING W-TALLY FOR LEADING G-03-1.
            IF W-TALLY = 2
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *�P�[�X14�F��Ӗ��P�A��Ӗ�3�iTALLYING,TRAILING�w��j
            MOVE "P-140-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            MOVE "��" TO G-03-1.
            
            MOVE 0 TO W-TALLY.
            INSPECT G-01 TALLYING W-TALLY FOR TRAILING G-03-1.
            IF W-TALLY = 3
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *
            MOVE "P-140-02"        TO CASE-ID.
            MOVE 0 TO W-TALLY.
            INSPECT GE-01 TALLYING W-TALLY FOR TRAILING G-03-1.
            IF W-TALLY = 2
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *�P�[�X15�F��Ӗ��P�A��Ӗ�3�iTALLYING,ALL,2�����w��j
            MOVE "P-150-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            MOVE "����" TO G-03-2.
            
            MOVE 0 TO W-TALLY.
            INSPECT G-01 TALLYING W-TALLY FOR ALL G-03-2.
            IF W-TALLY = 2
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *
            MOVE "P-150-02"        TO CASE-ID.
            MOVE 0 TO W-TALLY.
            INSPECT GE-01 TALLYING W-TALLY FOR ALL G-03-2.
            IF W-TALLY = 2
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *�P�[�X16�F��Ӗ��P�A��Ӗ�8�iTALLYING,CHARACTERS,BEFORE�w��j
            MOVE "P-160-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            MOVE "��" TO G-08-1.
            
            MOVE 0 TO W-TALLY.
            INSPECT G-01 TALLYING W-TALLY FOR CHARACTERS BEFORE G-08-1.
            IF W-TALLY = 3
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *
            MOVE "P-160-02"        TO CASE-ID.
            MOVE 0 TO W-TALLY.
            INSPECT GE-01 TALLYING W-TALLY FOR CHARACTERS BEFORE G-08-1.
            IF W-TALLY = 4
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *�P�[�X17�F��Ӗ��P�A��Ӗ�3�A��Ӗ�8�iTALLYING,ALL,AFTER�w��j
            MOVE "P-170-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            MOVE "��" TO G-03-1.
            MOVE "��" TO G-08-1.
            
            MOVE 0 TO W-TALLY.
            INSPECT G-01 TALLYING W-TALLY FOR ALL G-03-1 AFTER G-08-1.
            IF W-TALLY = 2
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *
            MOVE "P-170-02"        TO CASE-ID.
            MOVE 0 TO W-TALLY.
            INSPECT GE-01 TALLYING W-TALLY FOR ALL G-03-1 AFTER G-08-1.
            IF W-TALLY = 1
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *�P�[�X18�F��Ӗ��P�A��Ӗ�3�A��Ӗ�8�iTALLYING,LEADING,AFTER�w��j
            MOVE "P-180-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            MOVE "��" TO G-03-1.
            MOVE "��" TO G-08-1.

            MOVE 0 TO W-TALLY.
            INSPECT G-01 TALLYING W-TALLY FOR 
                                          LEADING G-03-1 AFTER G-08-1.
            IF W-TALLY = 2
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *
            MOVE "P-180-02"        TO CASE-ID.
            MOVE 0 TO W-TALLY.
            INSPECT GE-01 TALLYING W-TALLY FOR 
                                           LEADING G-03-1 AFTER G-08-1.
            IF W-TALLY = 2
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *�P�[�X19�F��Ӗ��P�A��Ӗ�3�A��Ӗ�8�iTALLYING,TRAILING,BEFORE�w��j
            MOVE "P-190-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            MOVE "��" TO G-03-1.
            MOVE "��" TO G-08-1.
            
            MOVE 0 TO W-TALLY.
            INSPECT G-01 TALLYING W-TALLY FOR
                                          TRAILING G-03-1 BEFORE G-08-1.
            IF W-TALLY = 2
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *
            MOVE "P-190-02"        TO CASE-ID.
            MOVE 0 TO W-TALLY.
            INSPECT GE-01 TALLYING W-TALLY FOR
                                          TRAILING G-03-1 BEFORE G-08-1.
            IF W-TALLY = 1
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *�P�[�X20�F��Ӗ��P�A��Ӗ�3�A��Ӗ�8�i�iTALLYING,ALL,2�����w��,BEFORE�j
            MOVE "P-200-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            MOVE "����������������" TO GE-01.
            MOVE "����" TO G-03-2.
            MOVE "����" TO G-08-2.
            
            MOVE 0 TO W-TALLY.
            INSPECT G-01 TALLYING W-TALLY FOR ALL G-03-2 BEFORE G-08-2.
            IF W-TALLY = 1
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *
            MOVE "P-200-02"        TO CASE-ID.
            MOVE 0 TO W-TALLY.
            INSPECT GE-01 TALLYING W-TALLY FOR ALL G-03-2 BEFORE G-08-2.
            IF W-TALLY = 2
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *�P�[�X21�F��Ӗ��P�A��Ӗ�3�A��Ӗ�8�iTALLYING,ALL,2�����w��,AFTER�j
            MOVE "P-210-01"        TO CASE-ID.
            MOVE "�������������^������" TO G-01.
            MOVE "����������������" TO GE-01.
            MOVE "�^��" TO G-03-2.
            MOVE "����" TO G-08-2.
            

            MOVE 0 TO W-TALLY.
            INSPECT G-01 TALLYING W-TALLY FOR ALL G-03-2 AFTER G-08-2.
            IF W-TALLY = 1
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *
            MOVE "P-210-02"        TO CASE-ID.
            MOVE 0 TO W-TALLY.
            INSPECT GE-01 TALLYING W-TALLY FOR ALL G-03-2 AFTER G-08-2.
            IF W-TALLY = 1
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *�P�[�X21�ǉ�.�F��Ӗ��P�A��Ӗ�3�A��Ӗ�8
      *    �iAFTER�ň�Ӗ�8��������Ȃ��Ƃ��j
      *    �iBEFORE�ň�Ӗ�8��������Ȃ��Ƃ��j
            MOVE "P-210-03"        TO CASE-ID.
            MOVE "�������������^������" TO G-01.
            MOVE "����������������" TO GE-01.
            MOVE "�^��" TO G-03-2.
            MOVE "�`�a" TO G-08-2.


            MOVE 0 TO W-TALLY.
            INSPECT G-01 TALLYING W-TALLY FOR ALL G-03-2 AFTER G-08-2.
            IF W-TALLY = 0
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      *
            MOVE "P-210-04"        TO CASE-ID.
            MOVE 0 TO W-TALLY.
            INSPECT GE-01 TALLYING W-TALLY FOR ALL G-03-2 BEFORE G-08-2.
            IF W-TALLY = 2
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" W-TALLY
            END-IF.
      
      *
            display "TEST END  (EX5-4A)".
            *>ACCEPT OMIT-WK.
            GOBACK
            .

