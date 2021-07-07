      ******************************************************************
      *    �e�X�g�P�[�X�F5-1-2
      *    �v���O�������F���{�ꉻ�e�X�g �i�葱�����j���� ����������
      *    �����T�v�@�@�F���{���r�����������s����邩���`�F�b�N����B
      *  --------------------------------------------------------------
      *   �e�X�g�P�[�X:�P�`�Q�P
      *   �@�@�@�@�@�@�@�P�[�X�Q�O�A�P�P�̓R���p�C���G���[�Ƃ������B
      *   �@�@�@�@�@�@�@�m�F��A�R�����g�����āA���s�e�X�g����B
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           EX5-1-2A.
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
       01  W-G.
      *�P�[�X1�F���{��{���{��萔1��
           05  A-01           PIC N(5).
               88  C-01       VALUE "����������".
      *�P�[�X2�F���{��{���{��萔2�iTHRU�Ȃ�)
           05  A-02           PIC N(5).
               88  C-02       VALUE "����������" "����������".
      *�P�[�X3�F���{��{���{��萔2�iTHRU����)
           05  A-03           PIC N(1).
               88  C-03       VALUE "�O" THRU "�X".
      *�P�[�X4�F���{��{���{��萔n�i�g�ݍ��킹)
           05  A-04           PIC N(1).
               88  C-04       VALUE "�P" "�R" "�T" "�V" THRU "�X".
      *�P�[�X5�F���{��{ALL ���{��萔
           05  A-05           PIC N(5).
               88  C-05       VALUE ALL "������".
      *�P�[�X6�F���{��{�\�Ӓ萔
           05  A-06           PIC N(5).
               88  C-06-1     VALUE SPACE.
               88  C-06-2     VALUE QUOTE.
               88  C-06-3     VALUE ZEROES.
               88  C-06-4     VALUE HIGH-VALUE.
               88  C-06-5     VALUE LOW-VALUE.
      *�P�[�X7�F���{��{���{��萔�i�������������j
           05  A-07           PIC N(5).
               88  C-07       VALUE "������".
      *�P�[�X8�F���{��{���{��萔�i�������傫���j
           05  A-08           PIC N(5).
               88  C-08       VALUE "������������".
       01  W-GE.
      *�P�[�X9�F���{��ҏW�{���{��萔1��
           05  A-09           PIC N/N/N.
               88  C-09       VALUE "���^���^��".
      *�P�[�X10�F���{��ҏW�{���{��萔2�iTHRU�Ȃ�)
           05  A-10           PIC N/N/N.
               88  C-10       VALUE "���^���^��"  "���^���^��".
      *�P�[�X11�F���{��ҏW�{���{��萔2�iTHRU����)
           05  A-11           PIC N/N/N.
               88  C-11       VALUE "���^���^��" THRU "���^���^��".
      *�P�[�X12�F���{��ҏW�{���{��萔n�i�g�ݍ��킹)
           05  A-12           PIC N/N/N.
               88  C-12       VALUE  "�P�^�P�^�P"      "�R�^�R�^�R"
                                     "�V�^�V�^�V" THRU "�X�^�X�^�X".
      *�P�[�X13�F���{��ҏW�{ALL ���{��萔
           05  A-13           PIC N/N/N.
               88  C-13       VALUE ALL "���^".
      *�P�[�X14�F���{��ҏW�{�\�Ӓ萔
           05  A-14           PIC N/N/N.
               88  C-14-1     VALUE SPACE.
               88  C-14-2     VALUE QUOTE.
               88  C-14-3     VALUE ZEROES.
               88  C-14-4     VALUE HIGH-VALUE.
               88  C-14-5     VALUE LOW-VALUE.
      *�P�[�X15�F���{��ҏW�{���{��萔�i�������������j
           05  A-15           PIC N/N/N.
               88  C-15       VALUE "���^".
      *�P�[�X16�F���{��ҏW�{���{��萔�i�������傫���j
           05  A-16           PIC N/N/N.
               88  C-16       VALUE "���^���^���^���^���^��".
      *�P�[�X17�F(�Q�Ɖӏ��jPERFORM���߂�UNTIL
        01  A-17           PIC N(5).
               88  C-17       VALUE HIGH-VALUE.
      *�P�[�X18�F(�Q�Ɖӏ��jEVALUATE���߂�WHEN
        01  A-18           PIC N(5).
               88  C-18-1     VALUE "�P".
               88  C-18-2     VALUE "�Q".
               88  C-18-3     VALUE "�R".
      *�P�[�X19�F(�Q�Ɖӏ��jSEARCH���߂�WHEN
        01  A-19-GRP.
               10  A-19       OCCURS 50 INDEXED BY IDX-01.
                 15  A-19-1   PIC N(5).
                     88  C-19-1     VALUE LOW-VALUE.
                 15  A-19-2   PIC X(5).
      *�P�[�X20�F(�G���[�j���{��{�����萔
       01  A-20              PIC NNN.
              88 C-20-1      VALUE 123.
              88 C-20-2      VALUE 123.45. 
      *�P�[�X21�F(�G���[�j���{��ҏW�{�����萔
       01  A-21              PIC N/N/N.
              88 C-20-1      VALUE 123.
              88 C-20-2      VALUE 123.45. 
      ******************************************************************
       PROCEDURE             DIVISION.
      ******************************************************************
       MAIN                  SECTION.
       P-010. 
            DISPLAY "TEST START (EX5-1-2A)".
      *�P�[�X1�F���{��{���{��萔1��
            MOVE "P-010-01"        TO CASE-ID.
            MOVE "����������" TO A-01.
            IF C-01                  DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *�P�[�X2�F���{��{���{��萔2�iTHRU�Ȃ�)
            MOVE "P-020-01"        TO CASE-ID.
            MOVE "����������" TO A-02.
            IF C-02                  DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *�P�[�X3�F���{��{���{��萔2�iTHRU����)
            MOVE "P-030-01"        TO CASE-ID.
            MOVE "�U"         TO A-03.
            IF C-03                  DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
            MOVE "P-030-02"        TO CASE-ID.
            MOVE "�`"         TO A-03.
            IF C-03                  DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *�P�[�X4�F���{��{���{��萔n�i�g�ݍ��킹)
            MOVE "P-040-01"        TO CASE-ID.
            MOVE "�U"          TO A-04.
            IF C-04                  DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
            MOVE "P-040-02"        TO CASE-ID.
            MOVE "�R"          TO A-04.
            IF C-04                  DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *�P�[�X5�F���{��{ALL ���{��萔
            MOVE "P-050-01"        TO CASE-ID.
            MOVE ALL "������"  TO A-05.
            IF C-05                  DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *�P�[�X6�F���{��{�\�Ӓ萔
            MOVE "P-060-01"        TO CASE-ID.
            MOVE SPACE         TO A-06.
            IF C-06-1                DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
            MOVE "P-060-02"        TO CASE-ID.
            MOVE QUOTE         TO A-06.
            IF C-06-2                DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
            MOVE "P-060-03"        TO CASE-ID.
            MOVE ZERO          TO A-06.
            IF C-06-3                DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
            MOVE "P-060-04"        TO CASE-ID.
            MOVE HIGH-VALUE    TO A-06.
            IF C-06-4                DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
            MOVE "P-060-05"        TO CASE-ID.
            MOVE LOW-VALUE     TO A-06.
            IF C-06-5                DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *�P�[�X7�F���{��{���{��萔�i�������������j
            MOVE "P-070-01"        TO CASE-ID.
            MOVE "������"     TO A-07.
            IF C-07                  DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
               
      *
            *>ACCEPT OMIT-WK.
      *�P�[�X8�F���{��{���{��萔�i�������傫���j
            MOVE "P-080-01"        TO CASE-ID.
            MOVE "������������" TO A-08.
            IF C-08                  DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *�P�[�X9�F���{��ҏW�{���{��萔1��
            MOVE "P-090-01"        TO CASE-ID.
            MOVE "������    " TO A-09.
            IF C-09                  DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *�P�[�X10�F���{��ҏW�{���{��萔2�iTHRU�Ȃ�)
            MOVE "P-100-01"        TO CASE-ID.
            MOVE "������"     TO A-10.
            IF C-10                  DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *�P�[�X11�F���{��ҏW�{���{��萔2�iTHRU����)
            MOVE "P-110-01"        TO CASE-ID.
            MOVE "������"     TO A-11.
            IF C-11                  DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
            MOVE "P-110-02"        TO CASE-ID.
            MOVE "������"     TO A-11.
            IF C-11                  DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *�P�[�X12�F���{��ҏW�{���{��萔n�i�g�ݍ��킹)
            MOVE "P-120-01"        TO CASE-ID.
            MOVE "�Q�Q�Q"     TO A-12.
            IF C-12                  DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
            MOVE "P-120-02"        TO CASE-ID.
            MOVE "�W�W�W"     TO A-12.
            IF C-12                  DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *�P�[�X13�F���{��ҏW�{ALL ���{��萔
            MOVE "P-130-01"        TO CASE-ID.
            MOVE ALL "��"     TO A-13.
            IF C-13                  DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *�P�[�X14�F���{��ҏW�{�\�Ӓ萔
            MOVE "P-140-01"        TO CASE-ID.
            MOVE SPACE         TO A-14.
            IF C-14-1                DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
            MOVE "P-140-02"        TO CASE-ID.
            MOVE QUOTE         TO A-14.
            IF C-14-2                DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
            MOVE "P-140-03"        TO CASE-ID.
            MOVE ZERO          TO A-14.
            IF C-14-3                DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
            MOVE "P-140-04"        TO CASE-ID.
            MOVE HIGH-VALUE    TO A-14.
            IF C-14-4                DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
            MOVE "P-140-05"        TO CASE-ID.
            MOVE LOW-VALUE     TO A-14.
            IF C-14-5                DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *�P�[�X15�F���{��ҏW�{���{��萔�i�������������j
            MOVE "P-150-05"        TO CASE-ID.
            MOVE "������"       TO A-15.
            IF C-15                  DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *�P�[�X16�F���{��ҏW�{���{��萔�i�������傫���j
            MOVE "P-160-01"        TO CASE-ID.
            MOVE "������"       TO A-16.
            IF C-16                  DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *�P�[�X17�F(�Q�Ɖӏ��jPERFORM���߂�UNTIL
            MOVE "P-170-01"        TO CASE-ID.
            MOVE HIGH-VALUE     TO A-17.
            PERFORM UNTIL C-17
                                    DISPLAY CASE-ID "NG"
            END-PERFORM.
            IF A-17 = HIGH-VALUE
                                    DISPLAY CASE-ID "OK"
            END-IF.
      *�P�[�X18�F(�Q�Ɖӏ��jEVALUATE���߂�WHEN
            MOVE "P-180-01"        TO CASE-ID.
            MOVE "�R"            TO A-18.
            EVALUATE TRUE
              WHEN C-18-1           DISPLAY CASE-ID "NG"
              WHEN C-18-2           DISPLAY CASE-ID "NG"
              WHEN C-18-3           DISPLAY CASE-ID "OK"
              WHEN OTHER            DISPLAY CASE-ID "NG"
            END-EVALUATE.
      *�P�[�X19�F(�Q�Ɖӏ��jSEARCH���߂�WHEN
            MOVE "P-190-01"        TO CASE-ID.
            MOVE "����������"      TO A-19-1(1).
            MOVE "aaaaa"           TO A-19-2(1).
            MOVE "������"      TO A-19-1(2).
            MOVE "wwwww"           TO A-19-2(2).
            MOVE "����������"      TO A-19-1(3).
            MOVE "kkkkk"           TO A-19-2(3).
            MOVE "�ςςςς�"      TO A-19-1(4).
            MOVE "ppppp"           TO A-19-2(4).
            MOVE LOW-VALUE         TO A-19-1(5).
            MOVE "xxxxx"           TO A-19-2(5).
            SET IDX-01 TO 1.
            SEARCH A-19 VARYING IDX-01
                   AT END     DISPLAY CASE-ID "NG"
                   WHEN C-19-1(IDX-01)
                              DISPLAY CASE-ID "OK"
            END-SEARCH.
      *�P�[�X20�F(�G���[�j���{��{�����萔
      *      �R���p�C�����G���[�A�Ȃ�OK

      *�P�[�X21�F(�G���[�j���{��ҏW�{�����萔
      *      �R���p�C�����G���[�A�Ȃ�OK
            DISPLAY "TEST END   (EX5-1-2A)".
            *>ACCEPT OMIT-WK.
            GOBACK
            .

