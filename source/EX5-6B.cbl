      ******************************************************************
      *    �e�X�g�P�[�X�F5-6B
      *    �v���O�������F���{�ꉻ�e�X�g �i�葱�����jSTRING����
      *    �����T�v�@�@�FSTRING���߂̍\���`�F�b�N�ŃG���[�ƂȂ邩��
      *    �@�@�@�@�@�@�@�`�F�b�N����B���[�j���O�G���[�Ƃ����B
      *  --------------------------------------------------------------
      *   �e�X�g�P�[�X:�Q�U  ���̃v���O�����͎��s�ł��Ȃ��B
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           EX5-6B.
       AUTHOR.               TSH.
       DATE-WRITTEN.         2011-08-24.
       DATE-COMPILED.        2011-08-24.
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
       01  OVER-SW            PIC 9.
       01  CASE-ID            PIC X(10).
       01  W-PTR    PIC 999.
       01  W-INTO   PIC N(10).
       01  W-INTO-2 PIC N(20).
       01  G-01     PIC N(5).
       01  G-01-1   PIC N(5).
       01  G-01-2   PIC N(5).
       01  G-02-1   PIC N.
       01  G-02-2   PIC NN.

       01  X-01     PIC X(5).
       01  N-01     PIC 9(5).
       01  W-INTO-X PIC X(20).
      ******************************************************************
       PROCEDURE             DIVISION.
      ******************************************************************
       MAIN                  SECTION.
       P-010. 
            DISPLAY "TEST START (EX5-6B)".
      *�P�[�X26.�G���[�`�F�b�N
           MOVE "ABCDE" TO X-01.
           MOVE 12345 TO N-01.
           MOVE ALL "��"   TO W-INTO-2.
           MOVE "����������" TO G-01.
           
      * �R���p�C���G���[
           STRING G-01 DELIMITED BY "A"
                       INTO W-INTO
                       WITH POINTER W-PTR
                  ON OVERFLOW MOVE 1 TO OVER-SW
           END-STRING.
           
      * �R���p�C���G���[
           STRING G-01 DELIMITED BY X-01
                       INTO W-INTO
                       WITH POINTER W-PTR
                  ON OVERFLOW MOVE 1 TO OVER-SW
           END-STRING.
           
      * �R���p�C���G���[
           STRING G-01 DELIMITED BY N-01
                       INTO W-INTO
                       WITH POINTER W-PTR
                  ON OVERFLOW MOVE 1 TO OVER-SW
           END-STRING.
           
      * �R���p�C���G���[
           STRING G-01 DELIMITED BY "��"
                       INTO W-INTO-X
                       WITH POINTER W-PTR
                  ON OVERFLOW MOVE 1 TO OVER-SW
           END-STRING.
      ****
           DISPLAY "NG?".
            DISPLAY "TEST START (EX5-6B)".
           *>ACCEPT OMIT-WK.
           GOBACK
           .
