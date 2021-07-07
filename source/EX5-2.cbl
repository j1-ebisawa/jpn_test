      ******************************************************************
      *    �e�X�g�P�[�X�F5-2
      *    �v���O�������F���{�ꉻ�e�X�g �i�葱�����jACCEPT����
      *    �����T�v�@�@�FACCEPT���߂����������s����邩���`�F�b�N����B
      *  --------------------------------------------------------------
      *   �e�X�g�P�[�X:�P�`�V
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           EX5-2.
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
       01  CASE-ID            PIC X(10).
       01  W-G.
           05  A-01.
               10  A-01-1     PIC N(5).
           05  A-02           PIC N(5).
           05  A-03           PIC N(5).
           05  A-04           PIC N(5).
           05  A-05           PIC N(5).
           05  A-06.
               10  A-06-1     PIC N(5).
           05  A-07.
               10  A-07-1     PIC N/N/N.
      ******************************************************************
       PROCEDURE             DIVISION.
      ******************************************************************
       MAIN                  SECTION.
       P-010. 
            DISPLAY "TEST START (EX5-2)".
      *�P�[�X1.���{����w�肵���ꍇ�A1�o�C�g���������͂ł��邩
            MOVE "P-010-01"        TO CASE-ID.
            MOVE SPACE       TO A-01-1.
            DISPLAY "INPUT:'ABCDEFGHIJ'".
            ACCEPT  A-01-1.
            IF A-01 = "ABCDEFGHIJ"   DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG" "A-01=" A-01
            END-IF.
      *�P�[�X2�F���{����w�肵���ꍇ�A2�o�C�g���������͂ł��邩
            MOVE "P-020-01"        TO CASE-ID.
            MOVE SPACE       TO A-02.
            DISPLAY "INPUT:'����������'".
            ACCEPT A-02.
            IF A-02 = "����������"   DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG" "A-02=" A-02
            END-IF.
      *�P�[�X3�F���{����w�肵���ꍇ�A2�o�C�g+1�o�C�g�������݂����͂ł��邩
            MOVE "P-030-01"        TO CASE-ID.
            MOVE SPACE       TO A-03.
            DISPLAY "INPUT:'����1234��'".
            ACCEPT A-03.
            IF A-03 = "����1234��"   DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG" "A-03=" A-03
            END-IF.
      *�P�[�X4�F�󂯎�葤���ڂ��A�����f�[�^����͂����Ƃ��A�؂�̂Ă��邩�B
            MOVE "P-040-01"        TO CASE-ID.
            MOVE SPACE       TO A-04.
            DISPLAY "INPUT:'��������������'".
            ACCEPT A-04.
            IF A-04 = "����������"   DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG" "A-04=" A-04
            END-IF.
      *�P�[�X5�F�󂯎�葤���ڂ��A�Z��2�o�C�g�����f�[�^����͂����Ƃ��A
      *         �T�C�Y�����������āA�ȍ~��2�o�C�g�󔒂����߂��邩�B  20110921�C��
            MOVE "P-050-01"        TO CASE-ID.
            MOVE ALL "��"       TO A-05.                                 *>20110921�C��
            DISPLAY "INPUT:'����'".
            ACCEPT A-05.
            IF A-05 = "�����@�@�@"                                      *>20110921�C��
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG" "A-05=" A-05
            END-IF.
      *�P�[�X6�F�󂯎�葤���ڂ��A�Z��1�o�C�g�����f�[�^����͂����Ƃ��A
      *         �T�C�Y�����������āA�ȍ~��2�o�C�g�󔒂����߂��邩�B  20110921�C��
            MOVE "P-060-01"        TO CASE-ID.
            MOVE ALL "��"      TO A-06-1.                                *>20110921�C��
            DISPLAY "INPUT:'ABCD'".
            ACCEPT A-06-1.                                              *>20110921�C��
            IF A-06 = "ABCD�@�@�@"                                      *>20110921�C��
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG" "A-06=" A-06
            END-IF.
      *�P�[�X7�F���{��ҏW���ڂ��󂯎�葤�̂Ƃ��A�ҏW�͂���Ȃ����B
      *         �T�C�Y�����������āA�ȍ~��2�o�C�g�󔒂����߂��邩�B  20110921�C��
            MOVE "P-070-01"        TO CASE-ID.
            MOVE ALL "��"       TO A-07-1.                               *>20110921�C��
            DISPLAY "INPUT:'������'".
            ACCEPT A-07-1.                                              *>20110921�C��
            IF A-07 = "�������@�@"                                      *>20110921�C��
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG" "A-07=" A-07
            END-IF.
      *�P�[�X8�F���{�ꍀ�ڈȊO���󂯎�葤�̂Ƃ��A�Z���f�[�^����͂����  20110921�ǉ�
      *         �T�C�Y�����������āA�ȍ~��1�o�C�g�󔒂����߂��邩�B   20110921�ǉ�
            MOVE "P-080-01"        TO CASE-ID.                          *>20110921�ǉ�
            MOVE ALL "*"       TO A-06.                                 *>20110921�ǉ�
            DISPLAY "INPUT:'������12'".                                 *>20110921�ǉ�
            ACCEPT A-06.                                                *>20110921�ǉ�
            IF A-06 = "������12  "                                      *>20110921�ǉ�
                                     DISPLAY CASE-ID "OK"               *>20110921�ǉ�
               ELSE                  DISPLAY CASE-ID "NG" "A-06=" A-06  *>20110921�ǉ�
            END-IF.                                                     *>20110921�ǉ�
      *
            DISPLAY "TEST END   (EX5-2)".
            *>ACCEPT OMIT-WK.
            GOBACK
            .

