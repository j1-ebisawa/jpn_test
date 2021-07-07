      ******************************************************************
      *    �e�X�g�P�[�X�F5-1-1D
      *    �v���O�������F���{�ꉻ�e�X�g �i�葱�����j���� ��r����
      *    �����T�v�@�@�F���{���r�����������s����邩���`�F�b�N����B
      *  --------------------------------------------------------------
      *   �e�X�g�P�[�X:�R�R�`�S�S
      *   �@�@�@�@�@�@�@�P�[�X�S�P�`�S�S�̓R���p�C���G���[�Ƃ������B
      *   �@�@�@�@�@�@�@�m�F��A�R�����g�����āA���s�e�X�g����B
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           EX5-1-1D.
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
           05  W-L-GRP-10     REDEFINES L-A.
               10  W-L-GRP-4.
                   15  FILLER PIC X(4).
               10  FILLER     PIC X(6).
           05  L-AN           PIC X(10).
           05  L-ANE          PIC XX/XX/XX.
           05  L-ZONE         PIC 9(5).
           05  L-ZONE-DEC     PIC S9(3)V9(2).
           05  L-PACK         PIC S9(5)       COMP-3.
           05  L-PACK-DEC     PIC S9(3)V9(2)  COMP-3.
           05  L-BIN          PIC S9(5)       COMP.
           05  L-BIN-DEC      PIC S9(3)V9(2)  COMP.
           05  L-NE           PIC ----9.
           05  L-G            PIC N(5).
           05  FILLER         REDEFINES L-G.
               10  L-G-3      PIC N(3).
               10  L-G-2      PIC N(2).
           05  L-GE           PIC N/N/N.
           05  FILLER         REDEFINES L-GE.
               10  L-GE-3     PIC N/N.
               10  L-GE-2     PIC /N.
           
       01  W-R-GRP.
           05  R-A            PIC A(10).
           05  W-R-GRP-10     REDEFINES R-A.
               10  W-R-GRP-4.
                   15  FILLER PIC X(4).
               10  FILLER     PIC X(6).
           05  R-AN           PIC X(10).
           05  R-ANE          PIC XX/XX/XX.
           05  R-ZONE         PIC 9(5).
           05  R-ZONE-DEC     PIC S9(3)V9(2).
           05  R-PACK         PIC S9(5)       COMP-3.
           05  R-PACK-DEC     PIC S9(3)V9(2)  COMP-3.
           05  R-BIN          PIC S9(5)       COMP.
           05  R-BIN-DEC      PIC S9(3)V9(2)  COMP.
           05  R-NE           PIC ----9.
           05  R-G            PIC N(5).
           05  FILLER         REDEFINES R-G.
               10  R-G-3      PIC N(3).
               10  R-G-2      PIC N(2).
           05  R-GE           PIC N/N/N.
           05  FILLER         REDEFINES R-GE.
               10  R-GE-3     PIC N/N.
               10  R-GE-2     PIC /N.
      ******************************************************************
       PROCEDURE             DIVISION.
      ******************************************************************
       MAIN                  SECTION.
       P-330. 
            DISPLAY "TEST START (EX5-1-1D)".
      *  �P�[�X33.�i���Ӂj�W�c���ځ{�i�E�Ӂj���{��
            MOVE "����������"        TO W-L-GRP.
            MOVE "����������"        TO R-G.
      *
            MOVE "P-330-01"        TO CASE-ID.
            IF W-L-GRP-10 = R-G      DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-330-02"        TO CASE-ID.
            IF W-L-GRP    > R-G      DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
            MOVE "P-330-03"        TO CASE-ID.
            IF W-L-GRP-4  < R-G      DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
       P-340. 
      *  �P�[�X34.�i���Ӂj�W�c�{�i�E�Ӂj���{��ҏW
            MOVE "���^���^��"        TO W-L-GRP.
            MOVE "������"            TO R-GE.
      *
            MOVE "P-340-01"        TO CASE-ID.
            IF W-L-GRP = R-GE        DISPLAY CASE-ID "OK"     *>20110912�C��
               ELSE                  DISPLAY CASE-ID "NG"     *>20110921�C��
            END-IF.
      *
            MOVE "P-340-02"        TO CASE-ID.
            IF W-L-GRP > R-GE        DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
            MOVE "P-340-03"        TO CASE-ID.
            IF W-L-GRP-4 < R-GE      DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
       P-350. 
      *  �P�[�X35.�i���Ӂj�W�c�{�i�E�Ӂj���{��萔
            MOVE "����������"        TO W-L-GRP.
      
            MOVE "P-350-01"        TO CASE-ID.
            IF W-L-GRP-10 = "����������"
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-350-02"        TO CASE-ID.
            IF W-L-GRP-4 >  "����������"         
                                     DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
            MOVE "P-350-03"        TO CASE-ID.
            IF W-L-GRP  > "����������"         
                                     DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
       P-360. 
      *  �P�[�X36.�i���Ӂj�W�c�{�i�E�ӁjALL ���{��萔
            MOVE "������"          TO W-L-GRP.
      
            MOVE "P-360-01"        TO CASE-ID.
            IF W-L-GRP = ALL "������"
                                     DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
            MOVE "P-360-02"        TO CASE-ID.
            IF W-L-GRP >  ALL "����"         
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-360-03"        TO CASE-ID.
            IF W-L-GRP > ALL "������"         
                                     DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
       P-370. 
      *  �P�[�X37.�i���Ӂj�p�����E�p�����ҏW�E�����ҏW�{�i�E�Ӂj���{��
            MOVE "����������"        TO L-AN.
            MOVE "ABCDE"             TO L-ANE.
            MOVE 12345               TO L-NE.
            MOVE "����������"        TO R-G.
      *
            MOVE "P-370-01"        TO CASE-ID.
            IF L-AN = R-G            DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-370-02"        TO CASE-ID.
            IF L-ANE > R-G-3         DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
            MOVE "P-370-03"        TO CASE-ID.
            IF L-NE < R-G            DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            *>ACCEPT OMIT-WK.
      *
       P-380. 
      *  �P�[�X38.�i���Ӂj�p�����E�p�����ҏW�E�����ҏW�{�i�E�Ӂj���{��
            MOVE "���^���^��"        TO L-AN.
            MOVE "ABCDE"             TO L-ANE.
            MOVE 12345               TO L-NE.
            MOVE "������"            TO R-GE.
      *
            MOVE "P-380-01"        TO CASE-ID.
            IF L-AN = R-GE           DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-380-02"        TO CASE-ID.
            IF L-ANE > R-GE-3        DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
            MOVE "P-380-03"        TO CASE-ID.
            IF L-NE < R-GE           DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
       P-390. 
      *  �P�[�X39.�i���Ӂj�p�����E�p�����ҏW�E�����ҏW�{�i�E�Ӂj���{��萔
            MOVE "���^���^��"        TO L-AN.
            MOVE "ABCDE"             TO L-ANE.
            MOVE 12345               TO L-NE.
      *
            MOVE "P-390-01"        TO CASE-ID.
            IF L-AN = "���^���^��"   DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-390-02"        TO CASE-ID.
            IF L-ANE > "���^���^��"  DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
            MOVE "P-390-03"        TO CASE-ID.
            IF L-NE < "���^���^��"   DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
       P40-0. 
      *  �P�[�X40.�i���Ӂj�p�����E�p�����ҏW�E�����ҏW�{�i�E�ӁjALL ���{��萔
            MOVE ALL "������"        TO L-AN.
            MOVE "ABCDE"             TO L-ANE.
            MOVE 12345               TO L-NE.
      *
            MOVE "P-400-01"        TO CASE-ID.
            IF L-AN = ALL "������"   DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-400-02"        TO CASE-ID.
            IF L-ANE > ALL "������"  DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
            MOVE "P-400-03"        TO CASE-ID.
            IF L-NE < ALL "������"   DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
       P-410. 
      *  �P�[�X41.�i���Ӂj�p���E�����{�i�E�Ӂj���{��
      *  �R���p�C���G���[
           MOVE "ABCDE"             TO L-A.
           MOVE 12345               TO L-ZONE.
           MOVE "����������"        TO R-G.
      *
           MOVE "P-410-01"        TO CASE-ID.
           IF L-A = R-G             DISPLAY CASE-ID "NG"
              ELSE                  DISPLAY CASE-ID "NG"
           END-IF.
      *
           MOVE "P-410-02"        TO CASE-ID.
           IF L-ZONE > R-G          DISPLAY CASE-ID "NG"
              ELSE                  DISPLAY CASE-ID "NG"
           END-IF.
      *
           MOVE "P-410-03"        TO CASE-ID.
           IF L-PACK < R-G          DISPLAY CASE-ID "NG"
              ELSE                  DISPLAY CASE-ID "NG"
           END-IF.
      *
           MOVE "P-410-04"        TO CASE-ID.
           IF 12345  < R-G          DISPLAY CASE-ID "NG"
              ELSE                  DISPLAY CASE-ID "NG"
           END-IF.
      *
      *     MOVE "P-410-05"        TO CASE-ID.
      *     IF 123.45 < R-G          DISPLAY CASE-ID "NG"  *>�G���[�ɂȂ���
      *        ELSE                  DISPLAY CASE-ID "NG"
      *     END-IF.
      *
       P-420. 
      *  �P�[�X42.�i���Ӂj�p���E�����{�i�E�Ӂj���{��ҏW
      *  �R���p�C���G���[
      *     MOVE "ABCDE"             TO L-A.
      *     MOVE 12345               TO L-ZONE.
      *     MOVE "������"            TO R-GE.
      *
      *     MOVE "P-420-01"        TO CASE-ID.
      *     IF L-A = R-GE            DISPLAY CASE-ID "NG"
      *        ELSE                  DISPLAY CASE-ID "NG"
      *     END-IF.
      *
      *     MOVE "P-420-02"        TO CASE-ID.
      *     IF L-ZONE > R-GE         DISPLAY CASE-ID "NG"
      *        ELSE                  DISPLAY CASE-ID "NG"
      *     END-IF.
      *
      *     MOVE "P-420-03"        TO CASE-ID.
      *     IF L-PACK < R-GE         DISPLAY CASE-ID "NG"
      *        ELSE                  DISPLAY CASE-ID "NG"
      *     END-IF.
      *
      *     MOVE "P-420-04"        TO CASE-ID.
      *     IF 12345  < R-GE         DISPLAY CASE-ID "NG"
      *        ELSE                  DISPLAY CASE-ID "NG"
      *     END-IF.
      *
      *     MOVE "P-420-04"        TO CASE-ID.
      *     IF 123.45 < R-GE         DISPLAY CASE-ID "NG"
      *        ELSE                  DISPLAY CASE-ID "NG"
      *     END-IF.
      *
       P-430. 
      *  �P�[�X43.�i���Ӂj�p���E�����{�i�E�Ӂj���{��萔
      *  �R���p�C���G���[
      *     MOVE "ABCDE"             TO L-A.
      *     MOVE 12345               TO L-ZONE.
      *
      *     MOVE "P-430-01"        TO CASE-ID.
      *     IF L-A = "������"        DISPLAY CASE-ID "NG"
      *        ELSE                  DISPLAY CASE-ID "NG"
      *     END-IF.
      *
      *     MOVE "P-430-02"        TO CASE-ID.
      *     IF L-ZONE-DEC > "������" DISPLAY CASE-ID "NG"
      *        ELSE                  DISPLAY CASE-ID "NG"
      *     END-IF.
      *
      *     MOVE "P-430-03"        TO CASE-ID.
      *     IF L-PACK-DEC < "������" DISPLAY CASE-ID "NG"
      *        ELSE                  DISPLAY CASE-ID "NG"
      *     END-IF.
      *
       P-440. 
      *  �P�[�X44.�i���Ӂj�p���E�����{�i�E�ӁjALL ���{��萔
      *  �R���p�C���G���[
      *     MOVE "ABCDE"             TO L-A.
      *     MOVE 12345               TO L-ZONE.
      *
      *     MOVE "P-440-01"        TO CASE-ID.
      *     IF L-A = ALL "������"    DISPLAY CASE-ID "NG"
      *        ELSE                  DISPLAY CASE-ID "NG"
      *     END-IF.
      *
      *     MOVE "P-440-02"        TO CASE-ID.
      *     IF L-ZONE-DEC > ALL "������" 
      *                              DISPLAY CASE-ID "NG"
      *        ELSE                  DISPLAY CASE-ID "NG"
      *     END-IF.
      *
      *     MOVE "P-440-03"        TO CASE-ID.
      *     IF L-PACK-DEC < ALL "������" 
      *                              DISPLAY CASE-ID "NG"
      *        ELSE                  DISPLAY CASE-ID "NG"
      *     END-IF.
      *
      *
            DISPLAY "TEST END   (EX5-1-1D)".
            *>ACCEPT OMIT-WK.
            GOBACK
            .

