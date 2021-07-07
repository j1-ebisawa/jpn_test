      ******************************************************************
      *    �e�X�g�P�[�X�F5-1-1A
      *    �v���O�������F���{�ꉻ�e�X�g �i�葱�����j���� ��r����
      *    �����T�v�@�@�F���{���r����������r�\�ɂ���������
      *                  �������G���[�`�F�b�N����邩���`�F�b�N����B
      *  --------------------------------------------------------------
      *    ���̃v���O�����̓G���[�`�F�b�N�𒲂ׂ�̂ŁA���s�ł��Ȃ��B
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           IF_TEST.
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
       01  W-L-GRP.
           05  L-A            PIC A(10).
           05  L-AN           PIC X(10).
           05  L-ANE          PIC XX/XX/XX.
           05  L-ZONE         PIC 9(5).
           05  L-ZONE-DEC     PIC S9(3)V9(2).
           05  L-PACK         PIC S9(5)       COMP-3.
           05  L-PACK-DEC     PIC S9(3)V9(2)  COMP-3.
           05  L-BIN          PIC S9(5)       COMP.
           05  L-BIN-DEC      PIC S9(3)V9(2)  COMP.
           05  L-NE           PIC ----9.
           05  L-G            PIC NNN.
           05  L-GE           PIC N/N/N.
           
       01  W-R-GRP.
           05  R-A            PIC A(10).
           05  R-AN           PIC X(10).
           05  R-ANE          PIC XX/XX/XX.
           05  R-ZONE         PIC 9(5).
           05  R-ZONE-DEC     PIC S9(3)V9(2).
           05  R-PACK         PIC S9(5)       COMP-3.
           05  R-PACK-DEC     PIC S9(3)V9(2)  COMP-3.
           05  R-BIN          PIC S9(5)       COMP.
           05  R-BIN-DEC      PIC S9(3)V9(2)  COMP.
           05  R-NE           PIC ----9.
           05  R-G            PIC NNN.
           05  R-GE           PIC N/N/N.
      ******************************************************************
       PROCEDURE             DIVISION.
      ******************************************************************
       MAIN                  SECTION.
       P-010. 
            DISPLAY "TEST START (IF_TEST)".
      *   �W�c
      *     �{�W�c
            IF W-L-GRP = W-R-GRP
               CONTINUE
            END-IF.
      *     +�p��
            IF W-L-GRP = R-A
               CONTINUE
            END-IF.
      *     +�p����
            IF W-L-GRP = R-AN
               CONTINUE
            END-IF.
      *     +����(ZONE����)
            IF W-L-GRP = R-ZONE
               CONTINUE
            END-IF.
      *     +����(ZONE�񐮐��j
            IF W-L-GRP = R-ZONE-DEC
               CONTINUE
            END-IF.
      *     +����(PACK����)
            IF W-L-GRP = R-PACK
               CONTINUE
            END-IF.
      *     +����(PACK�񐮐��j
            IF W-L-GRP =  R-PACK-DEC
               CONTINUE
            END-IF.
      *     +����(BIN����)
            IF W-L-GRP = R-BIN
               CONTINUE
            END-IF.
      *     +����(BIN�񐮐��j
            IF W-L-GRP = R-BIN-DEC
               CONTINUE
            END-IF.
      *     +����(�����ҏW�j
            IF W-L-GRP =  R-NE
               CONTINUE
            END-IF.
      *     +���{��
            IF W-L-GRP =  R-G
               CONTINUE
            END-IF.
      *     +���{��ҏW
            IF W-L-GRP =  R-GE
               CONTINUE
            END-IF.
      *     +���{��萔
            IF W-L-GRP =  "���{��"
               CONTINUE
            END-IF.
      *     +ALL ���{��萔
            IF W-L-GRP = ALL "���{��"
               CONTINUE
            END-IF.
      *     +�\�Ӓ萔
            IF W-L-GRP = QUOTES
               CONTINUE
            END-IF.
      *
       P-020. 
      *   �p��
      *     +�W�c
            IF L-A = W-R-GRP
               CONTINUE
            END-IF.
      *     +�p��
            IF L-A =  R-A
               CONTINUE
            END-IF.
      *     +�p����
            IF L-A =  R-AN
               CONTINUE
            END-IF.
      *     +����(ZONE����)
            IF L-A = R-ZONE
               CONTINUE
            END-IF.
      *     +����(ZONE�񐮐��j
            IF L-A = R-ZONE-DEC
               CONTINUE
            END-IF.
      *     +����(PACK����)
            IF L-A = R-PACK
               CONTINUE
            END-IF.
      *     +����(PACK�񐮐��j
            IF L-A = R-PACK-DEC
               CONTINUE
            END-IF.
      *     +����(BIN����)
            IF L-A =  R-BIN
               CONTINUE
            END-IF.
      *     +����(BIN�񐮐��j
            IF L-A =  R-BIN-DEC
               CONTINUE
            END-IF.
      *     +����(�����ҏW�j
            IF L-A =  R-NE
               CONTINUE
            END-IF.
      *     +���{��
            IF L-A =  R-G
               CONTINUE
            END-IF.
      *     +���{��ҏW
            IF L-A =  R-GE
               CONTINUE
            END-IF.
      *     +���{��萔
            IF L-A =  "���{��"
               CONTINUE
            END-IF.
      *     +ALL ���{��萔
            IF L-A = ALL "���{��"
               CONTINUE
            END-IF.
      *     +�\�Ӓ萔
            IF L-A =  QUOTES
               CONTINUE
            END-IF.
      *
      *
       P-030. 
      *   �p����
      *     +�W�c
            IF L-AN =  W-R-GRP
               CONTINUE
            END-IF.
      *     +�p��
            IF L-AN =  R-A
               CONTINUE
            END-IF.
      *     +�p����
            IF L-AN =  R-AN
               CONTINUE
            END-IF.
      *     +����(ZONE����)
            IF L-AN =  R-ZONE
               CONTINUE
            END-IF.
      *     +����(ZONE�񐮐��j
            IF L-AN =  R-ZONE-DEC
               CONTINUE
            END-IF.
      *     +����(PACK����)
            IF L-AN =  R-PACK
               CONTINUE
            END-IF.
      *     +����(PACK�񐮐��j
            IF L-AN =  R-PACK-DEC
               CONTINUE
            END-IF.
      *     +����(BIN����)
            IF L-AN =  R-BIN
               CONTINUE
            END-IF.
      *     +����(BIN�񐮐��j
            IF L-AN =  R-BIN-DEC
               CONTINUE
            END-IF.
      *     +����(�����ҏW�j
            IF L-AN = R-NE
               CONTINUE
            END-IF.
      *     +���{��
            IF L-AN =  R-G
               CONTINUE
            END-IF.
      *     +���{��ҏW
            IF L-AN =  R-GE
               CONTINUE
            END-IF.
      *     +���{��萔
            IF L-AN =  "���{��"
               CONTINUE
            END-IF.
      *     +ALL ���{��萔
            IF L-AN = ALL "���{��"
               CONTINUE
            END-IF.
      *     +�\�Ӓ萔
            IF L-AN =  QUOTES
               CONTINUE
            END-IF.
      *
      *
       P-040. 
      *   �p�����ҏW
      *     +�W�c
            IF L-ANE =  W-R-GRP
               CONTINUE
            END-IF.
      *     +�p��
            IF L-ANE =  R-A
               CONTINUE
            END-IF.
      *     +�p����
            IF L-ANE =  R-AN
               CONTINUE
            END-IF.
      *     +����(ZONE����)
            IF L-ANE =  R-ZONE
               CONTINUE
            END-IF.
      *     +����(ZONE�񐮐��j
            IF L-ANE =  R-ZONE-DEC
               CONTINUE
            END-IF.
      *     +����(PACK����)
            IF L-ANE =  R-PACK
               CONTINUE
            END-IF.
      *     +����(PACK�񐮐��j
            IF L-ANE =  R-PACK-DEC
               CONTINUE
            END-IF.
      *     +����(BIN����)
            IF L-ANE =  R-BIN
               CONTINUE
            END-IF.
      *     +����(BIN�񐮐��j
            IF L-ANE =  R-BIN-DEC
               CONTINUE
            END-IF.
      *     +����(�����ҏW�j
            IF L-ANE =  R-NE
               CONTINUE
            END-IF.
      *     +���{��
            IF L-ANE =  R-G
               CONTINUE
            END-IF.
      *     +���{��ҏW
            IF L-ANE =  R-GE
               CONTINUE
            END-IF.
      *     +���{��萔
            IF L-ANE =  "���{��"
               CONTINUE
            END-IF.
      *     +ALL ���{��萔
            IF L-ANE = ALL "���{��"
               CONTINUE
            END-IF.
      *     +�\�Ӓ萔
            IF L-ANE =  QUOTES
               CONTINUE
            END-IF.
      *
       P-050. 
      *   �����ҏW
      *     +�W�c
            IF L-NE =  W-R-GRP
               CONTINUE
            END-IF.
      *     +�p��
            IF L-NE =  R-A
               CONTINUE
            END-IF.
      *     +�p����
            IF L-NE =  R-AN
               CONTINUE
            END-IF.
      *     +����(ZONE����)
            IF L-NE =  R-ZONE
               CONTINUE
            END-IF.
      *     +����(ZONE�񐮐��j
            IF L-NE = R-ZONE-DEC
               CONTINUE
            END-IF.
      *     +����(PACK����)
            IF L-NE = R-PACK
               CONTINUE
            END-IF.
      *     +����(PACK�񐮐��j
            IF L-NE =  R-PACK-DEC
               CONTINUE
            END-IF.
      *     +����(BIN����)
            IF L-NE =  R-BIN
               CONTINUE
            END-IF.
      *     +����(BIN�񐮐��j
            IF L-NE =  R-BIN-DEC
               CONTINUE
            END-IF.
      *     +����(�����ҏW�j
            IF L-NE =  R-NE
               CONTINUE
            END-IF.
      *     +���{��
            IF L-NE =  R-G
               CONTINUE
            END-IF.
      *     +���{��ҏW
            IF L-NE =  R-GE
               CONTINUE
            END-IF.
      *     +���{��萔
            IF L-NE =  "���{��"
               CONTINUE
            END-IF.
      *     +ALL ���{��萔
            IF L-NE = ALL "���{��"
               CONTINUE
            END-IF.
      *     +�\�Ӓ萔
            IF L-NE = QUOTES
               CONTINUE
            END-IF.
      *
      *
       P-060. 
      *   �p��
      *     +�W�c
            IF L-A = W-R-GRP
               CONTINUE
            END-IF.
      *     +�p��
            IF L-A =  R-A
               CONTINUE
            END-IF.
      *     +�p����
            IF L-A =  R-AN
               CONTINUE
            END-IF.
      *     +����(ZONE����)
            IF L-A =  R-ZONE
               CONTINUE
            END-IF.
      *     +����(ZONE�񐮐��j
            IF L-A = R-ZONE-DEC
               CONTINUE
            END-IF.
      *     +����(PACK����)
            IF L-A =  R-PACK
               CONTINUE
            END-IF.
      *     +����(PACK�񐮐��j
            IF L-A = R-PACK-DEC
               CONTINUE
            END-IF.
      *     +����(BIN����)
            IF L-A = R-BIN
               CONTINUE
            END-IF.
      *     +����(BIN�񐮐��j
            IF L-A =  R-BIN-DEC
               CONTINUE
            END-IF.
      *     +����(�����ҏW�j
            IF L-A =  R-NE
               CONTINUE
            END-IF.
      *     +���{��
            IF L-A =  R-G
               CONTINUE
            END-IF.
      *     +���{��ҏW
            IF L-A =  R-GE
               CONTINUE
            END-IF.
      *     +���{��萔
            IF L-A = "���{��"
               CONTINUE
            END-IF.
      *     +ALL ���{��萔
            IF L-A = ALL "���{��"
               CONTINUE
            END-IF.
      *     +�\�Ӓ萔
            IF L-A =  QUOTES
               CONTINUE
            END-IF.
      *
      *
       P-070. 
      *   ZONE����
      *     +�W�c
            IF L-ZONE =  W-R-GRP
               CONTINUE
            END-IF.
      *     +�p��
            IF L-ZONE =  R-A
               CONTINUE
            END-IF.
      *     +�p����
            IF L-ZONE =  R-AN
               CONTINUE
            END-IF.
      *     +����(ZONE����)
            IF L-ZONE =  R-ZONE
               CONTINUE
            END-IF.
      *     +����(ZONE�񐮐��j
            IF L-ZONE =  R-ZONE-DEC
               CONTINUE
            END-IF.
      *     +����(PACK����)
            IF L-ZONE =  R-PACK
               CONTINUE
            END-IF.
      *     +����(PACK�񐮐��j
            IF L-ZONE =  R-PACK-DEC
               CONTINUE
            END-IF.
      *     +����(BIN����)
            IF L-ZONE =  R-BIN
               CONTINUE
            END-IF.
      *     +����(BIN�񐮐��j
            IF L-ZONE = R-BIN-DEC
               CONTINUE
            END-IF.
      *     +����(�����ҏW�j
            IF L-ZONE =  R-NE
               CONTINUE
            END-IF.
      *     +���{��
            IF L-ZONE =  R-G
               CONTINUE
            END-IF.
      *     +���{��ҏW
            IF L-ZONE =  R-GE
               CONTINUE
            END-IF.
      *     +���{��萔
            IF L-ZONE =  "���{��"
               CONTINUE
            END-IF.
      *     +ALL ���{��萔
            IF L-ZONE = ALL "���{��"
               CONTINUE
            END-IF.
      *     +�\�Ӓ萔
            IF L-ZONE =  QUOTES
               CONTINUE
            END-IF.
      *
      *
       P-080. 
      *   ZONE�񐮐�
      *     +�W�c
            IF L-ZONE-DEC =  W-R-GRP
               CONTINUE
            END-IF.
      *     +�p��
            IF L-ZONE-DEC =  R-A
               CONTINUE
            END-IF.
      *     +�p����
            IF L-ZONE-DEC =  R-AN
               CONTINUE
            END-IF.
      *     +����(ZONE����)
            IF L-ZONE-DEC =  R-ZONE
               CONTINUE
            END-IF.
      *     +����(ZONE�񐮐��j
            IF L-ZONE-DEC =  R-ZONE-DEC
               CONTINUE
            END-IF.
      *     +����(PACK����)
            IF L-ZONE-DEC =  R-PACK
               CONTINUE
            END-IF.
      *     +����(PACK�񐮐��j
            IF L-ZONE-DEC = R-PACK-DEC
               CONTINUE
            END-IF.
      *     +����(BIN����)
            IF L-ZONE-DEC =  R-BIN
               CONTINUE
            END-IF.
      *     +����(BIN�񐮐��j
            IF L-ZONE-DEC =  R-BIN-DEC
               CONTINUE
            END-IF.
      *     +����(�����ҏW�j
            IF L-ZONE-DEC =  R-NE
               CONTINUE
            END-IF.
      *     +���{��
            IF L-ZONE-DEC =  R-G
               CONTINUE
            END-IF.
      *     +���{��ҏW
            IF L-ZONE-DEC =  R-GE
               CONTINUE
            END-IF.
      *     +���{��萔
            IF L-ZONE-DEC =  "���{��"
               CONTINUE
            END-IF.
      *     +ALL ���{��萔
            IF L-ZONE-DEC = ALL "���{��"
               CONTINUE
            END-IF.
      *     +�\�Ӓ萔
            IF L-ZONE-DEC =  QUOTES
               CONTINUE
            END-IF.
      *
       P-090. 
      *   PACK����
      *     +�W�c
            IF L-PACK =  W-R-GRP
               CONTINUE
            END-IF.
      *     +�p��
            IF L-PACK =  R-A
               CONTINUE
            END-IF.
      *     +�p����
            IF L-PACK =  R-AN
               CONTINUE
            END-IF.
      *     +����(ZONE����)
            IF L-PACK =  R-ZONE
               CONTINUE
            END-IF.
      *     +����(ZONE�񐮐��j
            IF L-PACK =  R-ZONE-DEC
               CONTINUE
            END-IF.
      *     +����(PACK����)
            IF L-PACK =  R-PACK
               CONTINUE
            END-IF.
      *     +����(PACK�񐮐��j
            IF L-PACK =  R-PACK-DEC
               CONTINUE
            END-IF.
      *     +����(BIN����)
            IF L-PACK =  R-BIN
               CONTINUE
            END-IF.
      *     +����(BIN�񐮐��j
            IF L-PACK =  R-BIN-DEC
               CONTINUE
            END-IF.
      *     +����(�����ҏW�j
            IF L-PACK =  R-NE
               CONTINUE
            END-IF.
      *     +���{��
            IF L-PACK =  R-G
               CONTINUE
            END-IF.
      *     +���{��ҏW
            IF L-PACK =  R-GE
               CONTINUE
            END-IF.
      *     +���{��萔
            IF L-PACK =  "���{��"
               CONTINUE
            END-IF.
      *     +ALL ���{��萔
            IF L-PACK = ALL "���{��"
               CONTINUE
            END-IF.
      *     +�\�Ӓ萔
            IF L-PACK =  QUOTES
               CONTINUE
            END-IF.
      *
      *
       P-100. 
      *   PACK�񐮐�
      *     +�W�c
            IF L-PACK-DEC =  W-R-GRP
               CONTINUE
            END-IF.
      *     +�p��
            IF L-PACK-DEC =  R-A
               CONTINUE
            END-IF.
      *     +�p����
            IF L-PACK-DEC =  R-AN
               CONTINUE
            END-IF.
      *     +����(ZONE����)
            IF L-PACK-DEC =  R-ZONE
               CONTINUE
            END-IF.
      *     +����(ZONE�񐮐��j
            IF L-PACK-DEC =  R-ZONE-DEC
               CONTINUE
            END-IF.
      *     +����(PACK����)
            IF L-PACK-DEC =  R-PACK
               CONTINUE
            END-IF.
      *     +����(PACK�񐮐��j
            IF L-PACK-DEC =  R-PACK-DEC
               CONTINUE
            END-IF.
      *     +����(BIN����)
            IF L-PACK-DEC =  R-BIN
               CONTINUE
            END-IF.
      *     +����(BIN�񐮐��j
            IF L-PACK-DEC =  R-BIN-DEC
               CONTINUE
            END-IF.
      *     +����(�����ҏW�j
            IF L-PACK-DEC =  R-NE
               CONTINUE
            END-IF.
      *     +���{��
            IF L-PACK-DEC =  R-G
               CONTINUE
            END-IF.
      *     +���{��ҏW
            IF L-PACK-DEC =  R-GE
               CONTINUE
            END-IF.
      *     +���{��萔
            IF L-PACK-DEC =  "���{��"
               CONTINUE
            END-IF.
      *     +ALL ���{��萔
            IF L-PACK-DEC = ALL "���{��"
               CONTINUE
            END-IF.
      *     +�\�Ӓ萔
            IF L-PACK-DEC =  QUOTES
               CONTINUE
            END-IF.
      *
      *
       P-110. 
      *   BIN����
      *     +�W�c
            IF L-BIN =  W-R-GRP
               CONTINUE
            END-IF.
      *     +�p��
            IF L-BIN =  R-A
               CONTINUE
            END-IF.
      *     +�p����
            IF L-BIN =  R-AN
               CONTINUE
            END-IF.
      *     +����(ZONE����)
            IF L-BIN =  R-ZONE
               CONTINUE
            END-IF.
      *     +����(ZONE�񐮐��j
            IF L-BIN =  R-ZONE-DEC
               CONTINUE
            END-IF.
      *     +����(PACK����)
            IF L-BIN =  R-PACK
               CONTINUE
            END-IF.
      *     +����(PACK�񐮐��j
            IF L-BIN =  R-PACK-DEC
               CONTINUE
            END-IF.
      *     +����(BIN����)
            IF L-BIN =  R-BIN
               CONTINUE
            END-IF.
      *     +����(BIN�񐮐��j
            IF L-BIN =  R-BIN-DEC
               CONTINUE
            END-IF.
      *     +����(�����ҏW�j
            IF L-BIN =  R-NE
               CONTINUE
            END-IF.
      *     +���{��
            IF L-BIN =  R-G
               CONTINUE
            END-IF.
      *     +���{��ҏW
            IF L-BIN =  R-GE
               CONTINUE
            END-IF.
      *     +���{��萔
            IF L-BIN =  "���{��"
               CONTINUE
            END-IF.
      *     +ALL ���{��萔
            IF L-BIN = ALL "���{��"
               CONTINUE
            END-IF.
      *     +�\�Ӓ萔
            IF L-BIN =  QUOTES
               CONTINUE
            END-IF.
      *
      *
       P-120. 
      *   BIN�񐮐�
      *     +�W�c
            IF L-BIN-DEC =  W-R-GRP
               CONTINUE
            END-IF.
      *     +�p��
            IF L-BIN-DEC =  R-A
               CONTINUE
            END-IF.
      *     +�p����
            IF L-BIN-DEC =  R-AN
               CONTINUE
            END-IF.
      *     +����(ZONE����)
            IF L-BIN-DEC =  R-ZONE
               CONTINUE
            END-IF.
      *     +����(ZONE�񐮐��j
            IF L-BIN-DEC =  R-ZONE-DEC
               CONTINUE
            END-IF.
      *     +����(PACK����)
            IF L-BIN-DEC =  R-PACK
               CONTINUE
            END-IF.
      *     +����(PACK�񐮐��j
            IF L-BIN-DEC =  R-PACK-DEC
               CONTINUE
            END-IF.
      *     +����(BIN����)
            IF L-BIN-DEC =  R-BIN
               CONTINUE
            END-IF.
      *     +����(BIN�񐮐��j
            IF L-BIN-DEC =  R-BIN-DEC
               CONTINUE
            END-IF.
      *     +����(�����ҏW�j
            IF L-BIN-DEC =  R-NE
               CONTINUE
            END-IF.
      *     +���{��
            IF L-BIN-DEC =  R-G
               CONTINUE
            END-IF.
      *     +���{��ҏW
            IF L-BIN-DEC =  R-GE
               CONTINUE
            END-IF.
      *     +���{��萔
            IF L-BIN-DEC =  "���{��"
               CONTINUE
            END-IF.
      *     +ALL ���{��萔
            IF L-BIN-DEC = ALL "���{��"
               CONTINUE
            END-IF.
      *     +�\�Ӓ萔
            IF L-BIN-DEC =  QUOTES
               CONTINUE
            END-IF.
      *
      *
       P-130. 
      *   �����ҏW
      *     +�W�c
            IF L-NE =  W-R-GRP
               CONTINUE
            END-IF.
      *     +�p��
            IF L-NE =  R-A
               CONTINUE
            END-IF.
      *     +�p����
            IF L-NE =  R-AN
               CONTINUE
            END-IF.
      *     +����(ZONE����)
            IF L-NE =  R-ZONE
               CONTINUE
            END-IF.
      *     +����(ZONE�񐮐��j
            IF L-NE =  R-ZONE-DEC
               CONTINUE
            END-IF.
      *     +����(PACK����)
            IF L-NE =  R-PACK
               CONTINUE
            END-IF.
      *     +����(PACK�񐮐��j
            IF L-NE =  R-PACK-DEC
               CONTINUE
            END-IF.
      *     +����(BIN����)
            IF L-NE =  R-BIN
               CONTINUE
            END-IF.
      *     +����(BIN�񐮐��j
            IF L-NE =  R-BIN-DEC
               CONTINUE
            END-IF.
      *     +����(�����ҏW�j
            IF L-NE =  R-NE
               CONTINUE
            END-IF.
      *     +���{��
            IF L-NE =  R-G
               CONTINUE
            END-IF.
      *     +���{��ҏW
            IF L-NE =  R-GE
               CONTINUE
            END-IF.
      *     +���{��萔
            IF L-NE =  "���{��"
               CONTINUE
            END-IF.
      *     +ALL ���{��萔
            IF L-NE = ALL "���{��"
               CONTINUE
            END-IF.
      *     +�\�Ӓ萔
            IF L-NE =  QUOTES
               CONTINUE
            END-IF.
      *
      *
       P-140. 
      *   ���{��
      *     +�W�c
            IF L-G =  W-R-GRP
               CONTINUE
            END-IF.
      *     +�p��
            IF L-G =  R-A
               CONTINUE
            END-IF.
      *     +�p����
            IF L-G =  R-AN
               CONTINUE
            END-IF.
      *     +����(ZONE����)
            IF L-G =  R-ZONE
               CONTINUE
            END-IF.
      *     +����(ZONE�񐮐��j
            IF L-G =  R-ZONE-DEC
               CONTINUE
            END-IF.
      *     +����(PACK����)
            IF L-G =  R-PACK
               CONTINUE
            END-IF.
      *     +����(PACK�񐮐��j
            IF L-G =  R-PACK-DEC
               CONTINUE
            END-IF.
      *     +����(BIN����)
            IF L-G =  R-BIN
               CONTINUE
            END-IF.
      *     +����(BIN�񐮐��j
            IF L-G =  R-BIN-DEC
               CONTINUE
            END-IF.
      *     +����(�����ҏW�j
            IF L-G =  R-NE
               CONTINUE
            END-IF.
      *     +���{��
            IF L-G =  R-G
               CONTINUE
            END-IF.
      *     +���{��ҏW
            IF L-G =  R-GE
               CONTINUE
            END-IF.
      *     +���{��萔
            IF L-G =  "���{��"
               CONTINUE
            END-IF.
      *     +ALL ���{��萔
            IF L-G = ALL "���{��"
               CONTINUE
            END-IF.
      *     +�\�Ӓ萔
            IF L-G =  QUOTES
               CONTINUE
            END-IF.
      *
       P-150. 
      *   ���{��ҏW
      *     +�W�c
            IF L-GE =  W-R-GRP
               CONTINUE
            END-IF.
      *     +�p��
            IF L-GE =  R-A
               CONTINUE
            END-IF.
      *     +�p����
            IF L-GE =  R-AN
               CONTINUE
            END-IF.
      *     +����(ZONE����)
            IF L-GE =  R-ZONE
               CONTINUE
            END-IF.
      *     +����(ZONE�񐮐��j
            IF L-GE =  R-ZONE-DEC
               CONTINUE
            END-IF.
      *     +����(PACK����)
            IF L-GE =  R-PACK
               CONTINUE
            END-IF.
      *     +����(PACK�񐮐��j
            IF L-GE =  R-PACK-DEC
               CONTINUE
            END-IF.
      *     +����(BIN����)
            IF L-GE =  R-BIN
               CONTINUE
            END-IF.
      *     +����(BIN�񐮐��j
            IF L-GE =  R-BIN-DEC
               CONTINUE
            END-IF.
      *     +����(�����ҏW�j
            IF L-GE =  R-NE
               CONTINUE
            END-IF.
      *     +���{��
            IF L-GE =  R-G
               CONTINUE
            END-IF.
      *     +���{��ҏW
            IF L-GE =  R-GE
               CONTINUE
            END-IF.
      *     +���{��萔
            IF L-GE =  "���{��"
               CONTINUE
            END-IF.
      *     +ALL ���{��萔
            IF L-GE = ALL "���{��"
               CONTINUE
            END-IF.
      *     +�\�Ӓ萔
            IF L-GE =  QUOTES
               CONTINUE
            END-IF.
      *
      *
       P-160. 
      *   ���{��萔
      *     +�W�c
            IF "���{��" =  W-R-GRP
               CONTINUE
            END-IF.
      *     +�p��
            IF "���{��" =  R-A
               CONTINUE
            END-IF.
      *     +�p����
            IF "���{��" =  R-AN
               CONTINUE
            END-IF.
      *     +����(ZONE����)
            IF "���{��" =  R-ZONE
               CONTINUE
            END-IF.
      *     +����(ZONE�񐮐��j
            IF "���{��" =  R-ZONE-DEC
               CONTINUE
            END-IF.
      *     +����(PACK����)
            IF "���{��" =  R-PACK
               CONTINUE
            END-IF.
      *     +����(PACK�񐮐��j
            IF "���{��" =  R-PACK-DEC
               CONTINUE
            END-IF.
      *     +����(BIN����)
            IF "���{��" =  R-BIN
               CONTINUE
            END-IF.
      *     +����(BIN�񐮐��j
            IF "���{��" =  R-BIN-DEC
               CONTINUE
            END-IF.
      *     +����(�����ҏW�j
            IF "���{��" =  R-NE
               CONTINUE
            END-IF.
      *     +���{��
            IF "���{��" =  R-G
               CONTINUE
            END-IF.
      *     +���{��ҏW
            IF "���{��" =  R-GE
               CONTINUE
            END-IF.
      *     +���{��萔
            IF "���{��" =  "���{��"
               CONTINUE
            END-IF.
      *     +ALL ���{��萔
            IF "���{��" = ALL "���{��"
               CONTINUE
            END-IF.
      *     +�\�Ӓ萔
            IF "���{��" =  QUOTES
               CONTINUE
            END-IF.
      *
       P-170. 
      *   ALL ���{��萔
      *     +�W�c
            IF ALL "���{��" =  W-R-GRP
               CONTINUE
            END-IF.
      *     +�p��
            IF ALL "���{��" =  R-A
               CONTINUE
            END-IF.
      *     +�p����
            IF ALL "���{��" =  R-AN
               CONTINUE
            END-IF.
      *     +����(ZONE����)
            IF ALL "���{��" =  R-ZONE
               CONTINUE
            END-IF.
      *     +����(ZONE�񐮐��j
            IF ALL "���{��" =  R-ZONE-DEC
               CONTINUE
            END-IF.
      *     +����(PACK����)
            IF ALL "���{��" =  R-PACK
               CONTINUE
            END-IF.
      *     +����(PACK�񐮐��j
            IF ALL "���{��" =  R-PACK-DEC
               CONTINUE
            END-IF.
      *     +����(BIN����)
            IF ALL "���{��" =  R-BIN
               CONTINUE
            END-IF.
      *     +����(BIN�񐮐��j
            IF ALL "���{��" =  R-BIN-DEC
               CONTINUE
            END-IF.
      *     +����(�����ҏW�j
            IF ALL "���{��" =  R-NE
               CONTINUE
            END-IF.
      *     +���{��
            IF ALL "���{��" =  R-G
               CONTINUE
            END-IF.
      *     +���{��ҏW
            IF ALL "���{��" =  R-GE
               CONTINUE
            END-IF.
      *     +���{��萔
            IF ALL "���{��" =  "���{��"
               CONTINUE
            END-IF.
      *     +ALL ���{��萔
            IF ALL "���{��" = ALL "���{��"
               CONTINUE
            END-IF.
      *     +�\�Ӓ萔
            IF ALL "���{��" =  QUOTES
               CONTINUE
            END-IF.
      *
      *
       P-170. 
      *   �\�Ӓ萔
      *     +�W�c
            IF SPACES =  W-R-GRP
               CONTINUE
            END-IF.
      *     +�p��
            IF SPACES =  R-A
               CONTINUE
            END-IF.
      *     +�p����
            IF SPACES =  R-AN
               CONTINUE
            END-IF.
      *     +����(ZONE����)
            IF SPACES =  R-ZONE
               CONTINUE
            END-IF.
      *     +����(ZONE�񐮐��j
            IF SPACES =  R-ZONE-DEC
               CONTINUE
            END-IF.
      *     +����(PACK����)
            IF SPACES =  R-PACK
               CONTINUE
            END-IF.
      *     +����(PACK�񐮐��j
            IF SPACES =  R-PACK-DEC
               CONTINUE
            END-IF.
      *     +����(BIN����)
            IF SPACES =  R-BIN
               CONTINUE
            END-IF.
      *     +����(BIN�񐮐��j
            IF SPACES =  R-BIN-DEC
               CONTINUE
            END-IF.
      *     +����(�����ҏW�j
            IF SPACES =  R-NE
               CONTINUE
            END-IF.
      *     +���{��
            IF SPACES =  R-G
               CONTINUE
            END-IF.
      *     +���{��ҏW
            IF SPACES =  R-GE
               CONTINUE
            END-IF.
      *     +���{��萔
            IF SPACES =  "���{��"
               CONTINUE
            END-IF.
      *     +ALL ���{��萔
            IF SPACES = ALL "���{��"
               CONTINUE
            END-IF.
      *     +�\�Ӓ萔
            IF SPACES =  QUOTES
               CONTINUE
            END-IF.
      *
            DISPLAY "TEST END   (IF_TEST)".
           *>ACCEPT OMIT-WK.
           GOBACK
           .

