      ******************************************************************
      *    �e�X�g�P�[�X�F5-1-1C
      *    �v���O�������F���{�ꉻ�e�X�g �i�葱�����j���� ��r����
      *    �����T�v�@�@�F���{���r�����������s����邩���`�F�b�N����B
      *  --------------------------------------------------------------
      *   �e�X�g�P�[�X:�P�V�`�R�Q
      *   �@�@�@�@�@�@�@�P�[�X�P�X�A�Q�V�̓R���p�C���G���[�Ƃ������B
      *   �@�@�@�@�@�@�@�m�F��A�R�����g�����āA���s�e�X�g����B
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           EX5-1-1C.
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
       P-017. 
            DISPLAY "TEST START (EX5-1-1C)".
      *  �P�[�X17.�i���Ӂj���{��萔�{�i�E�Ӂj�W�c����
            MOVE "����������"        TO W-R-GRP.
      *
            MOVE "P-170-01"        TO CASE-ID.
            IF "����������" = W-R-GRP-10
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-170-02"        TO CASE-ID.
            IF "����������" > W-R-GRP-4   
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-170-03"        TO CASE-ID.
            IF "����������" < W-R-GRP         
                                     DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
       P-018. 
      *  �P�[�X18.�i���Ӂj���{��萔�{�i�E�Ӂj�p�����E�p�����ҏW�E�����ҏW
            MOVE "����12����"        TO R-AN.
            MOVE "ABCDEF"            TO R-ANE.
            MOVE 12345               TO R-NE.
      *
            MOVE "P-180-01"        TO CASE-ID.
            IF "����������" = R-AN   DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
            MOVE "P-180-02"        TO CASE-ID.
            IF "����������" > R-ANE  DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-180-03"        TO CASE-ID.
            IF "����������" < R-NE   DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
       P-019. 
      *  �P�[�X19.�i���Ӂj���{��萔�{�i�E�Ӂj�p���E����
      *           �R���p�C���G���[�ƂȂ邩
           MOVE "P-190-01"        TO CASE-ID.
           IF "����������" = R-A    DISPLAY CASE-ID "NG"
              ELSE                  DISPLAY CASE-ID "NG"
           END-IF.
      *
           MOVE "P-190-02"        TO CASE-ID.
           IF "����������" > R-ZONE DISPLAY CASE-ID "NG"
              ELSE                  DISPLAY CASE-ID "NG"
           END-IF.
      *
       P-200. 
      *  �P�[�X4.�i���Ӂj���{��萔�{�i�E�Ӂj���{��
            MOVE "����������"        TO R-G.
      *
            MOVE "P-200-01"        TO CASE-ID.
            IF "����������" = R-G    DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-200-02"        TO CASE-ID.
            IF "����������" > R-G-3  DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-200-03"        TO CASE-ID.
            IF "������" < R-G        DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
       P-210. 
      *  �P�[�X21.�i���Ӂj���{��萔�{�i�E�Ӂj���{��ҏW
            MOVE "������"            TO R-GE.
      *
            MOVE "P-210-01"        TO CASE-ID.
            IF "���^���^��" = R-GE   DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-210-02"        TO CASE-ID.
            IF "���^���^��" > R-GE-3 DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-210-03"        TO CASE-ID.
            IF "���^��" < R-GE       DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            *>ACCEPT OMIT-WK.
      *
       P-220. 
      *  �P�[�X22.�i���Ӂj���{��萔�{�i�E�Ӂj���{��萔
            MOVE "����������"      TO L-G.
      *
            MOVE "P-220-01"        TO CASE-ID.
            IF "����������" =  "����������"       
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-220-02"        TO CASE-ID.
            IF "����������" > "����" DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-220-03"        TO CASE-ID.
            IF "����" < "����������" DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
      *
       P-230. 
      *  �P�[�X23.�i���Ӂj���{��萔�{�i�E�ӁjALL ���{��萔
            MOVE "����������"      TO L-G.
      *
            MOVE "P-230-01"        TO CASE-ID.
            IF "����������" =  ALL "����"     
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-230-02"        TO CASE-ID.
            IF "������" > ALL "����" DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
            MOVE "P-230-03"        TO CASE-ID.
            IF "������������" < ALL "����"      
                                     DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
       P-240. 
      *  �P�[�X8.�i���Ӂj���{��萔�{�i�E�Ӂj�\�Ӓ萔
      *
            MOVE "P-240-01"        TO CASE-ID.
            IF "�f" =  QUOTES        DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-240-02"        TO CASE-ID.
            IF "�f" > SPACES         DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-240-03"        TO CASE-ID.
            IF "�f" < ZEROES         DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
       P-250. 
      *  �P�[�X25.�i���ӁjALL ���{��萔�{�i�E�Ӂj�W�c����
            MOVE ALL "������"        TO W-R-GRP.
      *
            MOVE "P-250-01"        TO CASE-ID.
            IF ALL "������" = W-R-GRP-10        
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-250-02"        TO CASE-ID.
            IF ALL "������" > W-R-GRP-4   
                                     DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
            MOVE "P-250-03"        TO CASE-ID.
            IF ALL "������" < W-R-GRP        
                                     DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
       P-260. 
      *  �P�[�X26.�i���ӁjALL ���{��萔�{�i�E�Ӂj�p�����E�p�����ҏW�E�����ҏW
            MOVE ALL "������"        TO R-AN.
            MOVE "ABCDEF"            TO R-ANE.
            MOVE 123                 TO R-NE.
            
      *
            MOVE "P-260-01"        TO CASE-ID.
            IF ALL "������" = R-AN   DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-260-02"        TO CASE-ID.
            IF ALL "������" > R-ANE  DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-260-03"        TO CASE-ID.
            IF ALL "������" < R-NE   DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
            *>ACCEPT OMIT-WK.
      *
       P-270. 
      *  �P�[�X27.�i���ӁjALL ���{��萔�{�i�E�Ӂj�p���E����
      *           �R���p�C���G���[�ƂȂ邩
           MOVE "P-270-01"        TO CASE-ID.
           IF ALL "������" = R-A    DISPLAY CASE-ID "NG"
              ELSE                  DISPLAY CASE-ID "NG"
           END-IF.
      *
           MOVE "P-270-02"        TO CASE-ID.
           IF ALL "������" > R-ZONE DISPLAY CASE-ID "NG"
              ELSE                  DISPLAY CASE-ID "NG"
           END-IF.
      *
       P-280. 
      *  �P�[�X28.�i���ӁjALL ���{��萔�{�i�E�Ӂj���{��
            MOVE ALL "������"      TO R-G.
            
      *
            MOVE "P-280-01"        TO CASE-ID.
            IF ALL "������" = R-G    DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-280-02"        TO CASE-ID.
            IF ALL "������" > R-G-3  DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
            MOVE "P-280-03"        TO CASE-ID.
            IF ALL "������" < R-G    DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
       P-290. 
      *  �P�[�X29.�i���ӁjALL ���{��萔�{�i�E�Ӂj���{��ҏW
            MOVE ALL "������"      TO R-GE.
            
      *
            MOVE "P-290-01"        TO CASE-ID.
            IF ALL "���^���^��" = R-GE           
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-290-02"        TO CASE-ID.
            IF ALL "���^���^��" > R-GE-3         
                                     DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
            MOVE "P-290-03"        TO CASE-ID.
            IF ALL "���^���^��" < R-GE         
                                     DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
       P-300. 
      *  �P�[�X30.�i���ӁjALL ���{��萔�{�i�E�Ӂj���{��萔
            
      *
            MOVE "P-300-01"        TO CASE-ID.
            IF ALL "������" = "������������"   
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-300-02"        TO CASE-ID.
            IF ALL "������" > "����������"       
                                     DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
            MOVE "P-300-03"        TO CASE-ID.
            IF ALL "������" < "����" 
                                     DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
       P-310. 
      *  �P�[�X31.�i���ӁjALL ���{��萔�{�i�E�ӁjALL ���{��萔
            
      *
            MOVE "P-310-01"        TO CASE-ID.
            IF ALL "������" = ALL "������"   
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-310-02"        TO CASE-ID.
            IF ALL "������" > ALL "����"   
                                     DISPLAY CASE-ID "OK"      *>20110921�C��
               ELSE                  DISPLAY CASE-ID "NG"      *>20110921�C��
            END-IF.
      *
            MOVE "P-310-03"        TO CASE-ID.
            IF ALL "������" < ALL "����" 
                                     DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
       P-320. 
      *  �P�[�X32.�i���ӁjALL ���{��萔�{�i�E�Ӂj�\�Ӓ萔
            
      *
            MOVE "P-320-01"        TO CASE-ID.
            IF ALL "�h" = QUOTES     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-320-02"        TO CASE-ID.
            IF ALL "��" > QUOTES     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-320-03"        TO CASE-ID.
            IF ALL "�O" < ZERO       DISPLAY CASE-ID "NG"
               ELSE                  DISPLAY CASE-ID "OK"
            END-IF.
      *
            DISPLAY "TEST END   (EX5-1-1C)".
            *>ACCEPT OMIT-WK.
            GOBACK
            .

