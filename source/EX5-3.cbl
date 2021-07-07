      ******************************************************************
      *    �e�X�g�P�[�X�F5-3
      *    �v���O�������F���{�ꉻ�e�X�g �i�葱�����jINITIALIZE����
      *    �����T�v    �FINITIALIZE���߂����������s����邩���`�F�b�N����B
      *  --------------------------------------------------------------
      *   �e�X�g�P�[�X:�P�`�P�Q
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           EX5-3.
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
       01  A-01               PIC N(5) VALUE "����������".
       01  A-02               PIC N(5) VALUE "����������".
       01  A-03.
           05  A-03-1         PIC N(5).
           05  A-03-2         PIC N(5) VALUE "����������".
       01  A-04               PIC N(5).
       01  A-05               PIC N/N/N.
       01  A-06               PIC N/N/N VALUE "�P�^�Q�^�R".
       01  A-07.
           05  A-07-1         PIC N/N/N.
           05  A-07-2         PIC NNN  VALUE "������".
       01  A-08               PIC N/N/N.
       01  A-09.
           05  FILLER         PIC N(5).
           05  FILLER         PIC N/N/N.
       01  A-10.
           05  A-10-1         PIC X(5)          VALUE "ABCDE".
           05  A-10-2         PIC NNN           VALUE "������".
           05  A-10-3         PIC 999           VALUE 123.
           05  A-10-4         PIC N/N/N         VALUE "�P�^�Q�^�R".
           05  A-10-5         PIC XX/XX/XX      VALUE "11/22/33".
       01  A-11.
           05  A-11-1         PIC X(5)          VALUE "ABCDE".
           05  A-11-2         PIC NNN           VALUE "������".
           05  A-11-3         PIC 999           VALUE 123.
           05  A-11-4         PIC N/N/N         VALUE "�P�^�Q�^�R".
           05  A-11-5         PIC XX/XX/XX      VALUE "11/22/33".
       01  A-12.
           05  A-12-1         PIC X(5)          VALUE "ABCDE".
           05  A-12-2         PIC NNN           VALUE "������".
           05  A-12-3         PIC 999           VALUE 123.
           05  A-12-4         PIC N/N/N         VALUE "�P�^�Q�^�R".
           05  A-12-5         PIC XX/XX/XX      VALUE "11/22/33".
      ******************************************************************
       PROCEDURE             DIVISION.
      ******************************************************************
       MAIN                  SECTION.
       P-010. 
            DISPLAY "TEST START (EX5-3)".
      *�P�[�X1.��Ӗ��P�����{�ꍀ�ڂ̂Ƃ��i�����w�肪�Ȃ��A�܂���DEFAULT�w��̂Ƃ��j
            MOVE "P-010-01"        TO CASE-ID.
            INITIALIZE A-01.
            IF A-01 = "�@�@�@�@�@"   DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG" "A-01=" A-01
            END-IF.
      *�P�[�X2�F��Ӗ��P�����{�ꍀ�ڂ̂Ƃ��iTO VALUE�w��̂Ƃ��j
            MOVE "P-020-01"        TO CASE-ID.
            MOVE SPACE       TO A-02.
            INITIALIZE A-02 replacing NATIONAL TO VALUE.
            IF A-02 = "����������"   DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG" "A-02=" A-02
            END-IF.
      *�P�[�X3�F��Ӗ��P�����{�ꍀ�ڂ̂Ƃ��iREPLACING��Ӗ��w��̂Ƃ��j
            MOVE "P-030-01"        TO CASE-ID.
            MOVE SPACE       TO A-03-1.
            INITIALIZE A-03-1 REPLACING NATIONAL BY A-03-2.
            IF A-03-1 = "����������" DISPLAY CASE-ID "OK"
               ELSE               DISPLAY CASE-ID "NG" "A-03-1=" A-03-1
            END-IF.
      *�P�[�X4�F��Ӗ��P�����{�ꍀ�ڂ̂Ƃ��iREPLACING�萔�w��̂Ƃ��j
            MOVE "P-040-01"        TO CASE-ID.
            MOVE SPACE       TO A-04.
            INITIALIZE A-04 REPLACING NATIONAL BY "����������".
            IF A-04 = "����������"   DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG" "A-04=" A-04
            END-IF.
      *�P�[�X5�F��Ӗ��P�����{��ҏW���ڂ̂Ƃ��i�����w�肪�Ȃ��A
      *         �܂���DEFAULT�w��̂Ƃ��j
            MOVE "P-050-01"        TO CASE-ID.
            INITIALIZE A-05.
            IF A-05 = "�@�^�@�^�@"
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG" "A-05=" A-05
            END-IF.
      *�P�[�X6�F��Ӗ��P�����{��ҏW���ڂ̂Ƃ��iTO VALUE�w��̂Ƃ��j
            MOVE "P-060-01"        TO CASE-ID.
            MOVE SPACE       TO A-06.
            INITIALIZE A-06 replacing NATIONAL-EDITED TO VALUE.
            IF A-06 = "�P�^�Q�^�R"
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG" "A-06=" A-06
            END-IF.
      *�P�[�X7�F��Ӗ��P�����{��ҏW���ڂ̂Ƃ��iREPLACING��Ӗ��w��̂Ƃ��j
            MOVE "P-070-01"        TO CASE-ID.
            INITIALIZE A-07-1 REPLACING NATIONAL-EDITED BY A-07-2.
            IF A-07-1 = "���^���^��"
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG" "A-07=" A-07
            END-IF.
      *�P�[�X8�F��Ӗ��P�����{��ҏW���ڂ̂Ƃ��iREPLACING�萔�w��̂Ƃ��j
            MOVE "P-080-01"        TO CASE-ID.
            INITIALIZE A-08 REPLACING NATIONAL-EDITED BY "������".
            IF A-08 = "���^���^��"
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG" "A-08=" A-08
            END-IF.
      *�P�[�X9�F�������ڂ����{�ꍀ�ڂ̂Ƃ��iWITH FILLER�ŏ���������邩�j
            MOVE "P-090-01"        TO CASE-ID.
            INITIALIZE A-09 WITH FILLER
                       REPLACING NATIONAL        BY "����������"
                                 NATIONAL-EDITED BY "�P�Q�R".
            IF A-09 = "�����������P�^�Q�^�R"
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG" "A-09=" A-09
            END-IF.
      *�P�[�X10�F�W�c���ڂ��w�肳�ꂽ�Ƃ�(DEFAULT�܂��͉����w�肳��Ȃ��Ƃ��j
            MOVE "P-100-01"        TO CASE-ID.
            INITIALIZE A-10.
            IF A-10-1 = SPACE       AND
               A-10-2 = SPACE       AND
               A-10-3 = 0           AND
               A-10-4 = "�@�^�@�^�@" AND
               A-10-5 = "  /  /  "
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG" "A-10=" A-10
            END-IF.
      *�P�[�X11�F�W�c���ڂ��w�肳�ꂽ�Ƃ�(TO�@VALUE���w�肳�ꂽ�Ƃ��j
            MOVE "P-110-01"        TO CASE-ID.
            MOVE ALL "*" TO A-11.
            INITIALIZE A-11 ALL TO VALUE..
            IF A-11-1 = "ABCDE"      AND
               A-11-2 = "������"     AND
               A-11-3 = 123          AND
               A-11-4 = "�P�^�Q�^�R" AND
               A-11-5 = "11/22/33"
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG" "A-11=" A-11
            END-IF.
      *�P�[�X12�F�W�c���ڂ��w�肳�ꂽ�Ƃ�(REPLACING���w�肳�ꂽ�Ƃ��j
            MOVE "P-120-01"        TO CASE-ID.
            MOVE ALL "*" TO A-12.
            INITIALIZE A-12 REPLACING NATIONAL        BY "������"
                                      NATIONAL-EDITED BY "������".
            IF A-12-1 = "*****"      AND
               A-12-2 = "������"     AND
               A-12-3(1:3) = "***"   AND
               A-12-4 = "���^���^��" AND
               A-12-5 = "********"
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG" "A-12=" A-12
            END-IF.
      *
            DISPLAY "TEST END   (EX5-3)".
            *>ACCEPT OMIT-WK.
            GOBACK
            .

