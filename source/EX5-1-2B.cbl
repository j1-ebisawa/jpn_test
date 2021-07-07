      ******************************************************************
      *    �e�X�g�P�[�X�F5-1-2
      *    �v���O�������F���{�ꉻ�e�X�g �i�葱�����j���� ����������
      *    �����T�v�@�@�F���{���r�����������s����邩���`�F�b�N����B
      *  --------------------------------------------------------------
      *   �e�X�g�P�[�X:�Q�O�A�Q�P
      *   �@�@�@���̃v���O�����́A�G���[�`�F�b�N�̂��ߎ��s�ł��Ȃ��B
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           EX5-1-2B.
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
               88 C-21-1      VALUE 123.
               88 C-21-2      VALUE 123.45. 
      ******************************************************************
       PROCEDURE             DIVISION.
      ******************************************************************
       MAIN                  SECTION.
       P-020. 
            DISPLAY "TEST START (EX5-1-2B)".
      *�P�[�X20�F(�G���[�j���{��{�����萔
      *      �R���p�C�����G���[�A�Ȃ�OK
            MOVE "P-200-01"        TO CASE-ID.
            MOVE "�U"         TO A-20.
            IF C-20-1                DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
            MOVE "P-200-02"        TO CASE-ID.
            MOVE "�`"         TO A-03.
            IF C-20-2                DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.

      *�P�[�X21�F(�G���[�j���{��ҏW�{�����萔
      *      �R���p�C�����G���[�A�Ȃ�OK
            MOVE "P-210-01"        TO CASE-ID.
            MOVE "�U"         TO A-20.
            IF C-21-1                DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
            MOVE "P-210-02"        TO CASE-ID.
            MOVE "�`"         TO A-03.
            IF C-21-2                DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            DISPLAY "TEST END    (EX5-1-2B)".
            *>ACCEPT OMIT-WK.
            GOBACK
            .

