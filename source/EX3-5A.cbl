      ******************************************************************
      *    �e�X�g�P�[�X�F3-5A
      *    �v���O�������F���{�ꉻ�e�X�g �i����v�f�j�s�̂Ȃ�
      *    �����T�v�@�@�F�s�̂Ȃ������������s����邩���`�F�b�N����B
      *  --------------------------------------------------------------
      *   �e�X�g�P�[�X:�P�`�S
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           EX3-5A.
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
       01  �f�[�^���P         PIC X(10).
       01  �f�[�^��-abc       PIC X(10).
       01  �����`�a�b         PIC X(10).
       01  G-01               PIC N(5).
       01  G-02               PIC N(5).
       01  G-03               PIC N(5).
       01  G-04               PIC N(5).
      ******************************************************************
       PROCEDURE             DIVISION.
      ******************************************************************
       MAIN                  SECTION.
       P-010. 
            DISPLAY "TEST START (EX3-5A)".
      *  �P�[�X1.���{�ꗘ�p�Ҍ�̌p��
      *
            MOVE "P-010-01"             TO CASE-ID.
            MOVE "ABC" TO   �f�[�^
      -                          ���P.
            IF �f�[�^���P = "ABC"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-010-02"             TO CASE-ID.
            MOVE "ABC" TO   �f�[�^��-a
      -                              bc.
            IF �f�[�^��-abc = "ABC"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-010-03"             TO CASE-ID.
            MOVE "ABC" TO            ����
      -                                  �`�a�b.
            IF �����`�a�b = "ABC"    
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
       P-020. 
      *  �P�[�X2.���{��萔�̌p��
      *
            MOVE "P-020-01"             TO CASE-ID.
            MOVE                                                 "���{��
      -     "�`�a"   TO G-01
            IF G-01 = "���{��`�a"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-020-02"             TO CASE-ID.
            MOVE                                              "���{��h"
            & "�`"   TO G-01
            IF G-01 = "���{��h�`"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG:"  G-01
            END-IF.
      *
       P-030. 
      *  �P�[�X3.���{�ꗘ�p�Ҍ�̌p��(�p���s�̘A���j
            MOVE "P-030-01"             TO CASE-ID.
            MOVE "ABC" TO   �f�[
      -                         �^
      -                          ���P.
            IF �f�[�^���P = "ABC"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-030-02"             TO CASE-ID.
            MOVE "ABC" TO   �f�[�^
      -                          ��-a
      -                              bc.
            IF �f�[�^��-abc = "ABC"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-030-03"             TO CASE-ID.
            MOVE "ABC" TO            ��
      -                                ��
      -                                  �`�a�b.
            IF �����`�a�b = "ABC"    
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
       P-040. 
      *  �P�[�X4.���{�ꗘ�p�Ҍ�̌p��(�ԂɃR�����g�s�j
      *
            MOVE "P-040-01"             TO CASE-ID.
            MOVE "ABC" TO   �f�[�^
      *
      -                          ���P.
            IF �f�[�^���P = "ABC"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-040-02"             TO CASE-ID.
            MOVE "ABC" TO   �f�[�^��-a
      *
      -                              bc.
            IF �f�[�^��-abc = "ABC"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-040-03"             TO CASE-ID.
            MOVE "ABC" TO            ����
      *
      -                                  �`�a�b.
            IF �����`�a�b = "ABC"    
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            DISPLAY "TEST END   (EX3-5A)".
            *>ACCEPT OMIT-WK.
      *
            GOBACK
            .

