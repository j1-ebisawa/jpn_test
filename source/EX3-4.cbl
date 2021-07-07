      ******************************************************************
      *    �e�X�g�P�[�X�F3-4
      *    �v���O�������F���{�ꉻ�e�X�g �i����v�f�j�p�����f�[�^
      *    �����T�v�@�@�F�S�p���p�����̉p�����f�[�^�����������s����邩
      *    �@�@�@�@�@�@�@���`�F�b�N����B
      *  --------------------------------------------------------------
      *   �e�X�g�P�[�X:�P�`�T
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           EX3-4.
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
       01  W-I                PIC 999.
       01  P                  PIC 999.
       01  L                  PIC 999.
       01  AN-01              PIC X(10)    VALUE "����a".
       01  AN-02              PIC X(2)9(8) VALUE "��1234".
       01  AN-03              PIC X(2)A(8) VALUE "��abcd".
       01  AN-04              PIC X(10).
       01  G-01               PIC N(5).
       01  G-02               PIC N(5).
       01  G-03               PIC N(5).
       01  G-04               PIC N(5).
      ******************************************************************
       PROCEDURE             DIVISION.
      ******************************************************************
       MAIN                  SECTION.
       P-010. 
            DISPLAY "TEST START (EX3-4)".
      *  �P�[�X1.�p�����f�[�^���ڂ̒�`��VALUE��
      *
            MOVE "P-010-01"             TO CASE-ID.
            IF AN-01 = "����a"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-010-02"             TO CASE-ID.
            IF AN-02 = "��1234"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-010-03"             TO CASE-ID.
            IF AN-03 = "��abcd"    
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
       P-020. 
      *  �P�[�X2.�p�����f�[�^���ڂ̒�`�ƍ��������萔�̓]�L
      *
            MOVE "P-020-01"             TO CASE-ID.
            MOVE "����x" TO AN-01.
            IF AN-01 = "����x"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-020-02"             TO CASE-ID.
            MOVE "��9876" TO AN-02.
            IF AN-02 = "��9876"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-020-03"             TO CASE-ID.
            MOVE "��xyzw" TO AN-03.
            IF AN-03 = "��xyzw"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
       P-030. 
      *  �P�[�X3.�p�����f�[�^�̓��{��ւ̓]�L�i�PB���QB�ϊ��j
            MOVE "P-030-01"             TO CASE-ID.
            MOVE "����x" TO AN-01.
            MOVE AN-01 TO G-01.
            IF G-01 = "������"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-030-02"             TO CASE-ID.
            MOVE "��9876" TO AN-02.
            MOVE AN-02 TO G-02.
            IF G-02 = "���X�W�V�U"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG:" G-02
            END-IF.
      *
            MOVE "P-030-03"             TO CASE-ID.
            MOVE "��xyzw" TO AN-03.
            MOVE AN-03 TO G-03.
            IF G-03 = "����������"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG:" G-03
            END-IF.
       P-040. 
      *  �P�[�X4.�p�����f�[�^�̓��{��ւ̓]�L�i�PB���QB�ϊ��AILLEGAL DATA�j
      *
            MOVE "P-040-01"        TO CASE-ID.
            MOVE "��" & X"00" & "��" TO AN-01.
            MOVE AN-01 TO G-01.
            IF G-01 = "��" & X"0000" & "��"   
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-040-02"        TO CASE-ID.
            MOVE "��" & X"FF" & "��" TO AN-02.
            MOVE AN-02 TO G-02.
            IF G-02 = "��" & X"FFFF" & "��"   
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG:" G-02
            END-IF.
      *
            MOVE "P-040-03"        TO CASE-ID.
            MOVE "��" & X"20" & "��" TO AN-03.
            MOVE AN-03 TO G-03.
            IF G-03 = "��" & X"8140" & "��"     
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG:" G-03
            END-IF.
      *
            MOVE "P-040-04"        TO CASE-ID.
            MOVE "��" & X"03" & "��" TO AN-04.
            MOVE AN-04 TO G-04.
            IF G-04 = "��" & X"8140" & "��"   
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG:" G-04
            END-IF.
      *
       P-050. 
      *  �P�[�X5.�p�����f�[�^�̓��{��ւ̓]�L�i�PB���QB�ϊ��AILLEGAL DATA�j
      *
            MOVE "P-050-01"        TO CASE-ID.
            MOVE "��" & X"0000" & "��" TO AN-01.
            MOVE AN-01 TO G-01.
            IF G-01 = "��" & X"0000" & "��"   
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-050-02"        TO CASE-ID.
            MOVE "��" & X"FFFF" & "��" TO AN-02.
            MOVE AN-02 TO G-02.
            IF G-02 = "��" & X"FFFF" & "��"   
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG:" G-02
            END-IF.
      *
            MOVE "P-050-03"        TO CASE-ID.
            MOVE "��" & X"2020" & "��" TO AN-03.
            MOVE AN-03 TO G-03.
            IF G-03 = "��" & X"81408140" & "��"
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG:" G-03
            END-IF.
      *
            MOVE "P-050-04"        TO CASE-ID.
            MOVE "��" & X"0303" & "��" TO AN-04.
            MOVE AN-04 TO G-04.
            IF G-04 = "��" & X"81408140" & "��"
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG:" G-04
            END-IF.
      *
            DISPLAY "TEST END   (EX3-4)".
            *>ACCEPT OMIT-WK.
      *
            GOBACK
            .

