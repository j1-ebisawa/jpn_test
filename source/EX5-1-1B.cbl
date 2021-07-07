      ******************************************************************
      *    �e�X�g�P�[�X�F5-1-1B
      *    �v���O�������F���{�ꉻ�e�X�g �i�葱�����j���� ��r����
      *    �����T�v�@�@�F���{���r�����������s����邩���`�F�b�N����B
      *  --------------------------------------------------------------
      *   �e�X�g�P�[�X:�P�`�P�U
      *   �@�@�@�@�@�@�@�P�[�X�R�A�P�P�̓R���p�C���G���[�Ƃ������B
      *   �@�@�@�@�@�@�@�m�F��A�R�����g�����āA���s�e�X�g����B
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           EX5-1-1B.
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
       P-010. 
            DISPLAY "TEST START (EX5-1-1B)".
      *  �P�[�X1.�i���Ӂj���{��{�i�E�Ӂj�W�c����
            MOVE "����������"        TO L-G.
            MOVE "����������"        TO W-R-GRP.
      *
            MOVE "P-010-01"        TO CASE-ID.
            IF L-G = W-R-GRP-10      DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-010-02"        TO CASE-ID.
            IF L-G > W-R-GRP-4       DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-010-03"        TO CASE-ID.
            IF L-G < W-R-GRP         DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
       P-020. 
      *  �P�[�X2.�i���Ӂj���{��{�i�E�Ӂj�p�����E�p�����ҏW�E�����ҏW
            MOVE "����������"        TO L-G.
            MOVE "����12����"        TO R-AN.
            MOVE "ABCDEF"            TO R-ANE.
            MOVE 12345               TO R-NE.
      *
            MOVE "P-020-01"        TO CASE-ID.
            IF L-G = R-AN            DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
            MOVE "P-020-02"        TO CASE-ID.
            IF L-G > R-ANE           DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-020-03"        TO CASE-ID.
            IF L-G < R-NE            DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
       P-030. 
      *  �P�[�X3.�i���Ӂj���{��{�i�E�Ӂj�p���E����
      *           �R���p�C���G���[�ƂȂ邩
           MOVE "P-030-01"        TO CASE-ID.
           IF L-G = R-A             DISPLAY CASE-ID "NG"
              ELSE                  DISPLAY CASE-ID "NG"
           END-IF.
      *
           MOVE "P-030-02"        TO CASE-ID.
           IF L-G > R-ZONE          DISPLAY CASE-ID "NG"
              ELSE                  DISPLAY CASE-ID "NG"
           END-IF.
      *
           MOVE "P-030-03"        TO CASE-ID.
           IF L-G > 123             DISPLAY CASE-ID "NG"
              ELSE                  DISPLAY CASE-ID "NG"
           END-IF.
      *
      *     MOVE "P-030-04"        TO CASE-ID.
      *     IF L-G > 123.45          DISPLAY CASE-ID "NG"  *>�G���[�ɂȂ���
      *        ELSE                  DISPLAY CASE-ID "NG"
      *     END-IF.
      *
       P-040. 
      *  �P�[�X4.�i���Ӂj���{��{�i�E�Ӂj���{��
            MOVE "����������"        TO L-G.
            MOVE "����������"        TO R-G.
      *
            MOVE "P-040-01"        TO CASE-ID.
            IF L-G = R-G             DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-040-02"        TO CASE-ID.
            IF L-G > R-G-3           DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-040-03"        TO CASE-ID.
            IF L-G-3 < R-G           DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
       P-050. 
      *  �P�[�X5.�i���Ӂj���{��{�i�E�Ӂj���{��ҏW
            MOVE "���^���^��"        TO L-G.
            MOVE "������"            TO R-GE.
      *
            MOVE "P-050-01"        TO CASE-ID.
            IF L-G = R-GE            DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG:" L-G ":" R-GE
            END-IF.
      *
            MOVE "P-050-02"        TO CASE-ID.
            IF L-G > R-GE-3          DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG:"
                                             L-G ":" R-GE-3
            END-IF.
      *
            MOVE "P-050-03"        TO CASE-ID.
            IF L-G-3 < R-GE          DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG:"
                                             L-G-3 ":" R-GE
            END-IF.
      *
            *>ACCEPT OMIT-WK.
      *
       P-060. 
      *  �P�[�X6.�i���Ӂj���{��{�i�E�Ӂj���{��萔
            MOVE "����������"      TO L-G.
      *
            MOVE "P-060-01"        TO CASE-ID.
            IF L-G =  "����������"   DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-060-02"        TO CASE-ID.
            IF L-G > "����"          DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-060-03"        TO CASE-ID.
            IF L-G-3 < "��������"    DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
      *
       P-070. 
      *  �P�[�X7.�i���Ӂj���{��{�i�E�ӁjALL ���{��萔
            MOVE "����������"      TO L-G.
      *
            MOVE "P-070-01"        TO CASE-ID.
            IF L-G =  ALL "����"     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-070-02"        TO CASE-ID.
            IF L-G > ALL "����"      DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
            MOVE "P-070-03"        TO CASE-ID.
            IF L-G < ALL "����"      DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
       P-080. 
      *  �P�[�X8.�i���Ӂj���{��{�i�E�Ӂj�\�Ӓ萔
            MOVE QUOTES            TO L-G.
      *
            MOVE "P-080-01"        TO CASE-ID.
            IF L-G =  QUOTES         DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-080-02"        TO CASE-ID.
            IF L-G > SPACES          DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-080-03"        TO CASE-ID.
            IF L-G < ZEROES          DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG:" L-G
            END-IF.
            move ZEROES to R-G.
            IF L-G < R-G             DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG:" L-G
            END-IF.
      *
       P-090. 
      *  �P�[�X9.�i���Ӂj���{��ҏW�{�i�E�Ӂj�W�c����
            MOVE "������"            TO L-GE.
            MOVE "���^���^��"        TO W-R-GRP.
      *
            MOVE "P-090-01"        TO CASE-ID.
            IF L-GE = W-R-GRP-10     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-090-02"        TO CASE-ID.
            IF L-GE > W-R-GRP-4      DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-090-03"        TO CASE-ID.
            IF L-GE < W-R-GRP        DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
       P-100. 
      *  �P�[�X10.�i���Ӂj���{��ҏW�{�i�E�Ӂj�p�����E�p�����ҏW�E�����ҏW
            MOVE "������"            TO L-GE.
            MOVE "���^���^��"        TO R-AN.
            MOVE "ABCDEF"            TO R-ANE.
            MOVE 123                 TO R-NE.
            
      *
            MOVE "P-100-01"        TO CASE-ID.
            IF L-GE = R-AN           DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-100-02"        TO CASE-ID.
            IF L-GE > R-ANE          DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-100-03"        TO CASE-ID.
            IF L-GE < R-NE           DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
            *>ACCEPT OMIT-WK.
      *
       P-110. 
      *  �P�[�X11.�i���Ӂj���{��ҏW�{�i�E�Ӂj�p���E����
      *           �R���p�C���G���[�ƂȂ邩
           MOVE "P-110-01"        TO CASE-ID.
           IF L-GE = R-A            DISPLAY CASE-ID "NG"
              ELSE                  DISPLAY CASE-ID "NG"
           END-IF.
      *
           MOVE "P-110-02"        TO CASE-ID.
           IF L-GE > R-ZONE         DISPLAY CASE-ID "NG"
              ELSE                  DISPLAY CASE-ID "NG"
           END-IF.
      *
           MOVE "P-110-03"        TO CASE-ID.
           IF L-GE = 123            DISPLAY CASE-ID "NG"
              ELSE                  DISPLAY CASE-ID "NG"
           END-IF.
      *
      *     MOVE "P-110-04"        TO CASE-ID.
      *     IF L-GE > 123.45         DISPLAY CASE-ID "NG"  *>�G���[�ɂȂ���
      *        ELSE                  DISPLAY CASE-ID "NG"
      *     END-IF.
      *
       P-120. 
      *  �P�[�X12.�i���Ӂj���{��ҏW�{�i�E�Ӂj���{��
            MOVE "������"            TO L-GE.
            MOVE "���^���^��"        TO R-G.
            
      *
            MOVE "P-120-01"        TO CASE-ID.
            IF L-GE = R-G            DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-120-02"        TO CASE-ID.
            IF L-GE > R-G-3          DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-120-03"        TO CASE-ID.
            IF L-GE-3 < R-G          DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
       P-130. 
      *  �P�[�X13.�i���Ӂj���{��ҏW�{�i�E�Ӂj���{��ҏW
            MOVE "������"            TO L-GE.
            MOVE "������"            TO R-GE.
            
      *
            MOVE "P-130-01"        TO CASE-ID.
            IF L-GE = R-GE           DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG:" L-GE ":" R-GE
            END-IF.
      *
            MOVE "P-130-02"        TO CASE-ID.
            IF L-GE > R-GE-3         DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG:" L-GE ":" R-GE-3
            END-IF.
      *
            MOVE "P-130-03"        TO CASE-ID.
            IF L-GE-3 < R-GE         DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG:"
                                             L-GE-3 ":" R-GE
            END-IF.
      *
       P-140. 
      *  �P�[�X14.�i���Ӂj���{��ҏW�{�i�E�Ӂj���{��萔
            MOVE "������"            TO L-GE.
            
      *
            MOVE "P-140-01"        TO CASE-ID.
            IF L-GE = "���^���^��"   DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG:"
                                             L-GE ":" "���^���^��"
            END-IF.
      *
            MOVE "P-140-02"        TO CASE-ID.
            IF L-GE > "���^��"       DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG:"
                                             L-GE ":" "���^��"
            END-IF.
      *
            MOVE "P-140-03"        TO CASE-ID.
            IF L-GE-3 < "���^���^��" DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG:"
                                             L-GE-3 ":" "���^���^��"
            END-IF.
      *
       P-150. 
      *  �P�[�X15.�i���Ӂj���{��ҏW�{�i�E�ӁjALL ���{��萔
            MOVE "������"            TO L-GE.
            
      *
            MOVE "P-150-01"        TO CASE-ID.
            IF L-GE = ALL "���^��"   DISPLAY CASE-ID "NG:"
                                             L-GE ":ALL " "���^��"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
            MOVE "P-150-02"        TO CASE-ID.
            IF L-GE > ALL "���^��"   DISPLAY CASE-ID "NG:"
                                             L-GE ":ALL" "���^��"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
            MOVE "P-150-03"        TO CASE-ID.
            IF L-GE-3 < ALL "���^��" DISPLAY CASE-ID "NG:"
                                             L-GE-3 ":ALL" "���^��"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
            *>ACCEPT OMIT-WK.
      *
       P-160. 
      *  �P�[�X16.�i���Ӂj���{��ҏW�{�i�E�Ӂj�\�Ӓ萔
            MOVE "������"            TO L-GE.
            
      *
            MOVE "P-160-01"        TO CASE-ID.
            IF L-GE = SPACE          DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
            MOVE "P-160-02"        TO CASE-ID.
            IF L-GE > QUOTES         DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-160-03"        TO CASE-ID.
            IF L-GE-3 < ZERO         DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
            DISPLAY "TEST END   (EX5-1-1B)".
            *>ACCEPT OMIT-WK.
            GOBACK
            .

