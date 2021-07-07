      ******************************************************************
      *    �e�X�g�P�[�X�F4-1A
      *    �v���O�������F���{�ꉻ�e�X�g �i�f�[�^���jJUSTIFIED��
      *    �����T�v�@�@�FJUST�w�肪���������s����邩���`�F�b�N����B
      *  --------------------------------------------------------------
      *   �e�X�g�P�[�X:�P�`�S
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           EX4-1A.
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
       01  G-01               PIC N(5).
       01  GE-01              PIC N/N/N.
       01  G-J-01             PIC N(5) JUST.
       01  L-J-10             PIC N(10).
       01  L-J-3              PIC N(3).
       01  L-X-10             PIC X(10).
       01  L-X-3              PIC X(3).
       
      ******************************************************************
       PROCEDURE             DIVISION.
      ******************************************************************
       MAIN                  SECTION.
       P-010. 
            DISPLAY "TEST START (EX4-1A)".
      *  �P�[�X1.���{��f�[�^�iJUST��Ȃ��j
      *
            MOVE "P-010-01"             TO CASE-ID.
            MOVE "��������������������" TO G-01.
            IF G-01 = "����������"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-010-02"             TO CASE-ID.
            MOVE "������"               TO G-01.
            IF G-01 = "�������@�@"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-010-03"             TO CASE-ID.
            MOVE "����������"           TO GE-01.
            IF GE-01 = "���^���^��"    
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *
            MOVE "P-010-04"             TO CASE-ID.
            MOVE "��"                   TO GE-01.
            IF GE-01 = "���^�@�^�@"    
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *
       P-020. 
      *  �P�[�X2.���{��萔�����{��f�[�^�iJUST�傠��j
      *
            MOVE "P-020-01"             TO CASE-ID.
            MOVE "��������������������" TO G-J-01
            IF G-J-01 = "����������"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-020-02"             TO CASE-ID.
            MOVE "������"               TO G-J-01.  
            IF G-J-01 = "�@�@������"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
       P-030. 
      *  �P�[�X3.���{��f�[�^�����{��f�[�^�iJUST�傠��j
            MOVE "P-030-01"             TO CASE-ID.
            MOVE "��������������������" TO L-J-10.
            MOVE L-J-10 TO G-J-01.
            IF G-J-01 = "����������"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-030-02"             TO CASE-ID.
            MOVE "������"               TO L-J-3.
            MOVE L-J-3 TO G-J-01  
            IF G-J-01 = "�@�@������"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
       P-040. 
      *  �P�[�X4.�p�����f�[�^�����{��f�[�^�iJUST�傠��j
      *
            MOVE "P-040-01"             TO CASE-ID.
            MOVE "����������" TO L-X-10.
            MOVE L-X-10 TO G-J-01.
            IF G-J-01 = "�J�L�N�P�R"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG:" G-J-01
            END-IF.
      *
            MOVE "P-040-02"             TO CASE-ID.
            MOVE "���"               TO L-X-3.
            MOVE L-X-3 TO G-J-01
            IF G-J-01 = "�@�@�A�C�E"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG:" G-J-01
            END-IF.
      *
      *
            DISPLAY "TEST END   (EX4-1A)".
            *>ACCEPT OMIT-WK.
      *
            GOBACK
            .

