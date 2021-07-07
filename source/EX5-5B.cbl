      ******************************************************************
      *    �e�X�g�P�[�X�F5-5B
      *    �v���O�������F���{�ꉻ�e�X�g �i�葱�����jMOVE����
      *    �����T�v�@�@�F���{��]�L�����������s����邩���`�F�b�N����B
      *  --------------------------------------------------------------
      *   �e�X�g�P�[�X:�P�P�`�Q�O
      *   �@�@�@�@�@�@�@�P�[�X�P�R�A�P�W�̓R���p�C���G���[�Ƃ������B
      *   �@�@�@�@�@�@�@�m�F��A�R�����g�����āA���s�e�X�g����B
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           EX5-5B.
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
           05  L-G-10         PIC N(10).
           05  FILLER         REDEFINES L-G-10.
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
            DISPLAY "TEST START (EX5-5B)".
       P-110. 
      *  �P�[�X11.���{��萔���W�c����
      *
            MOVE "P-110-01"        TO CASE-ID.
            MOVE ALL "*"             TO W-R-GRP.
            MOVE "����������"        TO R-GRP-10.
            IF  R-GRP-10 = "����������"
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-110-02"        TO CASE-ID.
            MOVE ALL "*"             TO W-R-GRP.
            MOVE "����������"        TO R-GRP-4.
            IF  R-GRP-4 = "����"   
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-110-03"        TO CASE-ID.
            MOVE ALL "*"             TO W-R-GRP.
            MOVE "����������"        TO W-R-GRP.
            IF "����������" = W-R-GRP         
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
       P-120. 
      *  �P�[�X12.���{��萔���p�����E�p�����ҏW
      *
            MOVE "P-120-01"        TO CASE-ID.
            MOVE ALL "*"      TO R-AN.
            MOVE "����������" TO R-AN.
            IF R-AN = "����������"   DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-120-02"        TO CASE-ID.
            MOVE ALL "*"      TO R-ANE.
            MOVE "����������������" TO R-ANE.
            IF R-ANE = "��/��/��"    DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-120-03"        TO CASE-ID.
            MOVE ALL "*"      TO R-ANE.
            MOVE "����"       TO R-ANE.
            IF R-ANE = "��/��/  "    DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
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
           DISPLAY CASE-ID "NG".
           
      *
       P-140. 
      *  �P�[�X14.���{��萔�����{��
      * 
      *
            MOVE "P-140-01"        TO CASE-ID.
            MOVE ALL "*" TO W-R-GRP.
            MOVE "����������"        TO R-G.
            IF R-G = "����������"    DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-140-02"        TO CASE-ID.
            MOVE ALL "*" TO W-R-GRP.
            MOVE "����������"  TO R-G-3.
            IF R-G-3 = "������"      DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-140-03"        TO CASE-ID.
            MOVE ALL "*" TO W-R-GRP.
            MOVE "������"  TO R-G.
            IF R-G = "�������@�@"    DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-140-04"        TO CASE-ID.
            MOVE ALL "*" TO W-R-GRP.
            MOVE "����������"        TO R-GJ-5.
            IF R-GJ-5 = "����������" DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-140-05"        TO CASE-ID.
            MOVE ALL "*" TO W-R-GRP.
            MOVE "����������"        TO R-GJ-3.
            IF R-GJ-3 = "������"     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-140-06"        TO CASE-ID.
            MOVE ALL "*" TO W-R-GRP.
            MOVE "������"        TO R-GJ-5.
            IF R-GJ-5 = "�@�@������" DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
       P-150. 
      *  �P�[�X15.���{��萔�����{��ҏW
            MOVE "������"            TO R-GE.
      *
            MOVE "P-150-01"        TO CASE-ID.
            MOVE ALL "��"            TO R-GE.
            MOVE "������"            TO R-GE.
            IF "���^���^��" = R-GE   DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-150-02"        TO CASE-ID.
            MOVE ALL "��"            TO R-GE.
            MOVE "������"            TO R-GE-3.
            IF R-GE-3 = "���^��"     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-150-03"        TO CASE-ID.
            MOVE ALL "��"            TO R-GE.
            MOVE "����"              TO R-GE.
            IF R-GE = "���^���^�@"   DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-150-04"        TO CASE-ID.
            MOVE ALL "��"            TO R-GE-NB.
            MOVE "����������"        TO R-GE-NB.
            IF R-GE-NB = "�������^���@���^"   
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-150-05"        TO CASE-ID.
            MOVE ALL "��"            TO R-GE-NBZ.
            MOVE "����������"        TO R-GE-NBZ.
            IF R-GE-NBZ = "�������^���O�@��"   
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            *>ACCEPT OMIT-WK.
      *
       P-160. 
      *  �P�[�X16.ALL ���{��萔���W�c����
      *
            MOVE "P-160-01"        TO CASE-ID.
            MOVE ALL "*"             TO W-R-GRP.
            MOVE ALL "����������"    TO R-GRP-10.
            IF  R-GRP-10 = "����������"
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-160-02"        TO CASE-ID.
            MOVE ALL "*"             TO W-R-GRP.
            MOVE ALL "������"        TO R-GRP-10.
            IF  R-GRP-10 = "����������"   
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-160-03"        TO CASE-ID.
            MOVE ALL "*"             TO W-R-GRP.
            MOVE ALL "����"          TO R-GRP-10.
            IF R-GRP-10 = "����������" 
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
       P-170. 
      *  �P�[�X17.ALL ���{��萔���p�����E�p�����ҏW
      *
            MOVE "P-170-01"        TO CASE-ID.
            MOVE ALL "*"          TO R-AN.
            MOVE ALL "����������" TO R-AN.
            IF R-AN = "����������"   DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-170-02"        TO CASE-ID.
            MOVE ALL "*"      TO R-ANE.
            MOVE ALL "������" TO R-ANE.
            IF R-ANE = "��/��/��"    DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-170-03"        TO CASE-ID.
            MOVE ALL "*"      TO R-ANE.
            MOVE ALL "����"   TO R-ANE.
            IF R-ANE = "��/��/��"    DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
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
           DISPLAY CASE-ID "NG".
      *
       P-190. 
      *  �P�[�X19.ALL ���{��萔�����{��
      * 
            MOVE "P-190-01"        TO CASE-ID.
            MOVE ALL "*" TO W-R-GRP.
            MOVE ALL "����������"    TO R-G.
            IF R-G = "��������������������"    
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-190-02"        TO CASE-ID.
            MOVE ALL "*" TO W-R-GRP.
            MOVE ALL "��"  TO R-G-3.
            IF R-G-3 = "������"      DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-190-03"        TO CASE-ID.
            MOVE ALL "*" TO W-R-GRP.
            MOVE ALL "������"  TO R-G.
            IF R-G = "��������������������"    
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-190-04"        TO CASE-ID.
            MOVE ALL "*" TO W-R-GRP.
            MOVE ALL "����������"   TO R-GJ-5.
            IF R-GJ-5 = "����������" DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-190-05"        TO CASE-ID.
            MOVE ALL "*" TO W-R-GRP.
            MOVE ALL "����"        TO R-GJ-3.
            IF R-GJ-3 = "������"     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-190-06"        TO CASE-ID.
            MOVE ALL "*" TO W-R-GRP.
            MOVE ALL "������"        TO R-GJ-5.
            IF R-GJ-5 = "����������" DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
       P-200. 
      *  �P�[�X20.ALL ���{��萔�����{��ҏW
      *
            MOVE "P-200-01"        TO CASE-ID.
            MOVE ALL "��"            TO R-GE.
            MOVE ALL "������"        TO R-GE.
            IF R-GE = "���^���^��"   DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-200-02"        TO CASE-ID.
            MOVE ALL "��"            TO R-GE.
            MOVE ALL "��"            TO R-GE.
            IF R-GE = "���^���^��"     
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-200-03"        TO CASE-ID.
            MOVE ALL "��"            TO R-GE.
            MOVE ALL "����"         TO R-GE-3.
            IF R-GE-3 = "���^��"     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-200-04"        TO CASE-ID.
            MOVE ALL "��"            TO R-GE-NB.
            MOVE ALL "��"            TO R-GE-NB.
            IF R-GE-NB = "�������^���@���^"   
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-200-05"        TO CASE-ID.
            MOVE ALL "��"            TO R-GE-NBZ.
            MOVE ALL "������"        TO R-GE-NBZ.
            IF R-GE-NBZ = "�������^���O�@��"   
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG"
            END-IF.
      *
      *
             DISPLAY "TEST END   (EX5-5B)".
            *>ACCEPT OMIT-WK.
            GOBACK
            .

