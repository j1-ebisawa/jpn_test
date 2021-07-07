      ******************************************************************
      *    �e�X�g�P�[�X�F3-5B
      *    �v���O�������F���{�ꉻ�e�X�g �i����v�f�j�s�̂Ȃ�
      *    �����T�v�@�@�F�s�̂Ȃ����A��������������邩�B
      *  --------------------------------------------------------------
      *   �e�X�g�P�[�X�F�S�`�W
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           EX3-5B.
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
       P-050. 
            DISPLAY "TEST START (EX3-5B)".
      *  �P�[�X5.���{�ꗘ�p�Ҍ�̌p��+�󔒍s
      *
            MOVE "P-050-01"             TO CASE-ID.
            MOVE "ABC" TO   �f�[�^
            
      -                          ���P.
            IF �f�[�^���P = "ABC"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-050-02"             TO CASE-ID.
            MOVE "ABC" TO   �f�[�^��-a

      -                              bc.
            IF �f�[�^��-abc = "ABC"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-050-03"             TO CASE-ID.
            MOVE "ABC" TO            ����

      -                                  �`�a�b.
            IF �����`�a�b = "ABC"    
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
       P-060. 
      *  �P�[�X6.���{��萔�̌p��+�󔒍s
      *
            MOVE "P-060-01"             TO CASE-ID.
            MOVE                                                 "���{��

      -     "�`�a"   TO G-01
            IF G-01 = "���{��`�a"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-060-02"             TO CASE-ID.
            MOVE                                              "���{��h"

            & "�`"   TO G-01
            IF G-01 = "���{��h�`"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
       P-070. 
      *  �P�[�X3.���{�ꗘ�p�Ҍ�̌p��(�p���s�̘A���j+�󔒍s
            MOVE "P-070-01"             TO CASE-ID.
            MOVE "ABC" TO   �f�[

      -                         �^
      -                          ���P.
            IF �f�[�^���P = "ABC"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-070-02"             TO CASE-ID.
            MOVE "ABC" TO   �f�[�^
      -                           ��-a

      -                              bc.
            IF �f�[�^��-abc = "ABC"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-070-03"             TO CASE-ID.
            MOVE "ABC" TO            ��

      -                                ��
      -                                  �`�a�b.
            IF �����`�a�b = "ABC"    
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
       P-080. 
      *  �P�[�X8.���{�ꗘ�p�Ҍ�̌p��(�ԂɃR�����g�s�j+�󔒍s
      *
            MOVE "P-080-01"             TO CASE-ID.
            MOVE "ABC" TO   �f�[�^

      *
      -                          ���P.
            IF �f�[�^���P = "ABC"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-080-02"             TO CASE-ID.
            MOVE "ABC" TO   �f�[�^��-a
      *

      -                              bc.
            IF �f�[�^��-abc = "ABC"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-080-03"             TO CASE-ID.
            MOVE "ABC" TO            ����

      *
      -                                  �`�a�b.
            IF �����`�a�b = "ABC"    
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
      *
            DISPLAY "TEST END   (EX3-5B)".
            *>ACCEPT OMIT-WK.
      *
            GOBACK
            .

