      ******************************************************************
      *    �e�X�g�P�[�X�F4-4C
      *    �v���O�������F���{�ꉻ�e�X�g �i�f�[�^���jVALUE��
      *    �����T�v�@�@�FVALUE��w�肪����Ă���Ƃ��A�G���[�\������邩
      *                  ���`�F�b�N����B
      *  --------------------------------------------------------------
      *   �e�X�g�P�[�X:�W�`�X
      *   ���̃v���O�����̓G���[�`�F�b�N�̂��߁A���s�ł��Ȃ�
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           EX4-4C.
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
       01  G-08      PIC NNN    VALUE "�P�Q�R�S�T".
       01  G-09      PIC NNN    VALUE "ABC".
       01  GE-08     PIC N/N/N  VALUE "�P�^�Q�^�R�^�S�^�T".
       01  GE-09     PIC N/N/N  VALUE "ABC".
       01  ERR-01     PIC NNN    VALUE 123.
       01  ERR-02     PIC NNN    VALUE -123.5.
       01  ERR-03.
           05  ERR-03-1          
           VALUE "01�@�P��02�@�Q��03�@�R��04�@�S��05�@�T��06�@�U��" &
                 "07�@�V��08�@�W��09�@�X��10�P�O��11�P�P��12�P�Q��".
            10  FILLER          OCCURS 10.
              15  ERR-03-11     PIC 99.
              15  ERR-03-12     PIC NNN.
       01  A-01           PIC AAA            VALUE "�P�Q�R�S�T".
       01  X-01           PIC XXX            VALUE "�`�a�b".
       01  N-ZONE         PIC 9999           VALUE "�P�^�Q�^�R�^�S�^�T".
       01  N-ZONE-DEC     PIC 999V99         VALUE "������".
       01  N-PACK         PIC 9999   COMP-3  VALUE "�P�Q�R".
       01  N-PACK-DEC     PIC 99V999 COMP-3  VALUE "�X�W�V".
       01  N-BIN          PIC 9999   COMP    VALUE "�P�Q�R".
       01  N-BIN-DEC      PIC 99V999 COMP    VALUE "�X�W�V".
       01  NE-01          PIC --99.999       VALUE "�X�W�V".
       
      ******************************************************************
       PROCEDURE             DIVISION.
      ******************************************************************
       MAIN                  SECTION.
       P-010. 
            DISPLAY "TEST START (EX4-4C)".
      *  �P�[�X9.VALUE��̃G���[�`�F�b�N(���̂P�j
      *
            MOVE "P-010-01"             TO CASE-ID.
            DISPLAY  G-08.
            DISPLAY  G-09.
            DISPLAY  GE-08.
            DISPLAY  GE-09.
            DISPLAY  ERR-01.
            DISPLAY  ERR-02.
            DISPLAY  ERR-03-1.
      *  �P�[�X10.VALUE��̃G���[�`�F�b�N(���̂Q�j
      *
            MOVE "P-010-02"             TO CASE-ID.
            DISPLAY  A-01.
            DISPLAY  X-01.
            DISPLAY  N-ZONE.
            DISPLAY  N-ZONE-DEC.
            DISPLAY  N-PACK.
            DISPLAY  N-PACK-DEC.
            DISPLAY  N-BIN.
            DISPLAY  N-BIN-DEC.
            DISPLAY  NE-01.
      *
            DISPLAY "TEST END   (EX4-4C)".
            *>ACCEPT OMIT-WK.
      *
            GOBACK
            .

