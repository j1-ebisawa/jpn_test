      ******************************************************************
      *    �e�X�g�P�[�X�F5-5F
      *    �v���O�������F���{�ꉻ�e�X�g �i�葱�����jMOVE����
      *    �����T�v�@�@�F���{��]�L�����������s����邩���`�F�b�N����B
      *  --------------------------------------------------------------
      *   �e�X�g�P�[�X:�P�|�R�P�̂Ȃ��̃R���p�C���G���[�������ɏW�߂��B
      *   ���̃v���O�����̓G���[�`�F�b�N�̂��߁A���s�ł��Ȃ��B
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           EX5-5F.
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
       01  W-L-GRP.
           05  L-A            PIC A(10).
           05  FILLER         REDEFINES L-A.
               10  L-A-5      PIC X(5).
               10  L-A-3      PIC X(3).
               10  L-A-2      PIC X(2).
           05  L-GRP-10       REDEFINES L-A.
               10  L-GRP-4.
                   15  FILLER PIC X(4).
               10  FILLER     PIC X(6).
           05  L-AN           PIC X(10).
           05  FILLER         REDEFINES L-AN.
               10  L-AN-5     PIC X(5).
               10  L-AN-3     PIC X(3).
               10  L-AN-2     PIC X(2).
           05  L-ANE          PIC XX/XX/XX.
           05  L-ZONE         PIC 9(5).
           05  L-ZONE-DEC     PIC S9(3)V9(2).
           05  L-PACK         PIC S9(5)       COMP-3.
           05  L-PACK-DEC     PIC S9(3)V9(2)  COMP-3.
           05  L-BIN          PIC S9(5)       COMP.
           05  L-BIN-DEC      PIC S9(3)V9(2)  COMP.
           05  L-NE           PIC ----9.
           05  L-G            PIC N(10).
           05  FILLER         REDEFINES L-G.
               10  L-G-5      PIC N(5).
               10  L-G-3      PIC N(3).
               10  L-G-2      PIC N(2).
           05  L-GE           PIC N/N/N.
           05  FILLER         REDEFINES L-GE.
               10  L-GE-3     PIC N/N.
               10  L-GE-2     PIC /N.
           
       01  W-R-GRP.
           05  R-A            PIC A(10).
           05  R-GRP-10       REDEFINES R-A.
               10  R-GRP-4.
                   15  FILLER PIC X(4).
               10  FILLER     PIC X(6).
           05  R-AN           PIC X(10).
           05  R-ANE          PIC XX/XX/XX.
           05  FILLER         REDEFINES R-ANE.
               10  R-ANE-3    PIC XX/XX/.
               10  R-ANE-2    PIC XX.
           05  R-ZONE         PIC 9(5).
           05  R-ZONE-DEC     PIC S9(3)V9(2).
           05  R-PACK         PIC S9(5)       COMP-3.
           05  R-PACK-DEC     PIC S9(3)V9(2)  COMP-3.
           05  R-BIN          PIC S9(5)       COMP.
           05  R-BIN-DEC      PIC S9(3)V9(2)  COMP.
           05  R-NE           PIC ----9.
           05  R-G            PIC N(10).
           05  FILLER         REDEFINES R-G.
               10  R-G-5      PIC N(5).
               10  R-G-3      PIC N(3).
               10  R-G-2      PIC N(2).
           05  R-GJ           PIC N(10) JUST.
           05  FILLER         REDEFINES R-GJ.
               10  R-GJ-5     PIC N(5)  JUST.
               10  R-GJ-3     PIC N(3)  JUST.
               10  R-GJ-2     PIC N(2)  JUST.
           05  R-GE           PIC N/N/N.
           05  FILLER         REDEFINES R-GE.
               10  R-GE-3     PIC N/N.
               10  R-GE-2     PIC /N.
           05  R-GE-NB        PIC NNN/NBN/.
           05  R-GE-NBZ       PIC NNN/N0BN.
           
      ******************************************************************
       PROCEDURE             DIVISION.
      ******************************************************************
       MAIN                  SECTION.
       MAIN-00.
            DISPLAY "TEST START (EX5-5F)".
       P-030. 
      *  �P�[�X3.���{�ꁨ�p���E�����E�����ҏW
      *           �R���p�C���G���[�ƂȂ邩
            MOVE "��������������������" TO L-G.
      *
            MOVE "P-030-01"        TO CASE-ID.
            MOVE L-G-5 TO R-A.
      *
            MOVE "P-030-02"        TO CASE-ID.
            MOVE L-G-5 TO R-ZONE.
            MOVE L-G-5 TO R-ZONE-DEC.
      *
            MOVE "P-030-03"        TO CASE-ID.
            MOVE L-G-5 TO R-PACK.
            MOVE L-G-5 TO R-PACK-DEC.
      *
            MOVE "P-030-04"        TO CASE-ID.
            MOVE L-G-5 TO R-BIN.
            MOVE L-G-5 TO R-BIN-DEC.
      *
            MOVE "P-030-05"        TO CASE-ID.
            MOVE L-G-5 TO R-NE.
       P-080. 
      *  �P�[�X8.���{��ҏW���p���E�����E�����ҏW
      *           �R���p�C���G���[�ƂȂ邩
            MOVE "������"            TO L-GE.
            MOVE "P-080-01"        TO CASE-ID.
            MOVE L-GE TO R-A.
      *
            MOVE "P-080-02"        TO CASE-ID.
            MOVE L-GE TO R-ZONE.
            MOVE L-GE TO R-ZONE-DEC.
      *
            MOVE "P-080-03"        TO CASE-ID.
            MOVE L-GE TO R-PACK.
            MOVE L-GE TO R-PACK-DEC.
      *
            MOVE "P-080-04"        TO CASE-ID.
            MOVE L-GE TO R-BIN.
            MOVE L-GE TO R-BIN-DEC.
      *
            MOVE "P-080-05"        TO CASE-ID.
            MOVE L-GE TO R-NE.
      *
       P-130. 
      *  �P�[�X13.���{��萔���p���E�����E�����ҏW
      *           �R���p�C���G���[�ƂȂ邩
            MOVE "P-130-01"        TO CASE-ID.
            MOVE "����������" TO R-A.
            MOVE "����������" TO R-ZONE.
            MOVE "����������" TO R-ZONE-DEC.
            MOVE "����������" TO R-PACK.
            MOVE "����������" TO R-PACK-DEC.
            MOVE "����������" TO R-BIN.
            MOVE "����������" TO R-BIN-DEC.
            MOVE "����������" TO R-NE.
       P-180. 
      *  �P�[�X18.ALL ���{��萔���p���E�����E�����ҏW
      *           �R���p�C���G���[�ƂȂ邩
            MOVE "P-180-01"        TO CASE-ID.
            MOVE ALL "����������" TO R-A.
            MOVE ALL "����������" TO R-ZONE.
            MOVE ALL "����������" TO R-ZONE-DEC.
            MOVE ALL "����������" TO R-PACK.
            MOVE ALL "����������" TO R-PACK-DEC.
            MOVE ALL "����������" TO R-BIN.
            MOVE ALL "����������" TO R-BIN-DEC.
            MOVE ALL "����������" TO R-NE.
      *
       P-270. 
      *  �P�[�X27.�����i�����j�A�����萔(�����j�����{��
      *           �R���p�C���G���[�ƂȂ邩
            MOVE "P-270-01"        TO CASE-ID.
            MOVE 123.456 TO L-ZONE-DEC.
            MOVE 123.456 TO L-PACK-DEC.
            MOVE 123.456 TO L-BIN-DEC.
            
            MOVE L-ZONE-DEC TO R-G.
            MOVE L-PACK-DEC TO R-G.
            MOVE L-BIN-DEC  TO R-G.
            
       P-280. 
      *  �P�[�X28.�����i�����j�A�����萔(�����j�����{��ҏW
      *           �R���p�C���G���[�ƂȂ邩
            MOVE "P-280-01"        TO CASE-ID.
            MOVE 123.456 TO L-ZONE-DEC.
            MOVE 123.456 TO L-PACK-DEC.
            MOVE 123.456 TO L-BIN-DEC.
            MOVE L-ZONE-DEC TO R-GE.
            MOVE L-PACK-DEC TO R-GE.
            MOVE L-BIN-DEC  TO R-GE.
      *
             DISPLAY "TEST END   (EX5-5F)".
            *>ACCEPT OMIT-WK.
            GOBACK
            .

