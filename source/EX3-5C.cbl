      ******************************************************************
      *    �e�X�g�P�[�X�F3-5C
      *    �v���O�������F���{�ꉻ�e�X�g �i����v�f�j�s�̂Ȃ�
      *    �����T�v�@�@�F�s�̂Ȃ������������s����邩���`�F�b�N����B
      *  --------------------------------------------------------------
      *     �Ӑ}�ɔ����ăG���[�ƂȂ��Ă��܂����B
      *   �e�X�g�P�[�X:�X
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           EX3-5C.
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
            DISPLAY "TEST START (EX3-5C)".
      *
      *  �P�[�X9.���{�ꗘ�p�Ҍ�̌p���i�C�����C���R�����g�Ƃ̑g�ݍ��킹�j
      *
            MOVE "P-090-01"             TO CASE-ID.
            MOVE "ABC" TO   �f�[�^                             *>comment
      -                          ���P.
            IF �f�[�^���P = "ABC"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-090-02"             TO CASE-ID.
            MOVE "ABC" TO   �f�[�^��-a                       *>�R�����g
      -                              bc.
            IF �f�[�^��-abc = "ABC"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-090-03"             TO CASE-ID.
            MOVE "ABC" TO            ����                      *>�R�����g
      -                                  �`�a�b.
            IF �����`�a�b = "ABC"    
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            DISPLAY "TEST END   (EX3-5C)".
            *>ACCEPT OMIT-WK.
      *
            GOBACK
            .

