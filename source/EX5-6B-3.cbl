      ******************************************************************
      *    �e�X�g�P�[�X�FEX5-6B-3
      *    �v���O�������F���{�ꉻ�e�X�g �i�葱�����jSTRING����
      *    �����T�v�@�@�FSTRING���߂̍\���`�F�b�N�ŃG���[�ƂȂ邩��
      *    �@�@�@�@�@�@�@�`�F�b�N����B
      *  --------------------------------------------------------------
      *   �e�X�g�P�[�X:1  ���̃v���O�����͎��s�ł��Ȃ��B
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           EX5-6B-3.
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
       01  G-02-2   PIC N/N.
       01  G-02-3   PIC N/N/N.

       01  X-01     PIC X(5).
       01  X-02     PIC X.       
       01  X-03     PIC X/X.
       01  N-01     PIC 9(5).       
       01  W-INTO-X PIC X(20).
      ******************************************************************
       PROCEDURE             DIVISION.
      ******************************************************************
       MAIN                  SECTION.
       P-010. 
            DISPLAY "TEST START (EX5-6B-3)".
      * �P�[�X1.��Ӗ��P��Ӗ��Q�����ׂĕҏW�^�C�v�ł͂Ȃ��ꍇ�ŁA
      * ��Ӗ��R����ҏW�^�C�v�̏ꍇ
           MOVE "ABCDE" TO X-01.
           MOVE "A" TO X-02.
           MOVE "AB" TO X-03.
           MOVE "����" TO G-02-2.
           MOVE "������" TO G-02-3.           
           MOVE ALL "��"   TO W-INTO.
           MOVE "����������" TO G-01.
           MOVE 1 TO W-PTR
           
      * �R���p�C���G���[
           STRING G-01 DELIMITED BY G-02-2
                       INTO W-INTO
                       WITH POINTER W-PTR
                  ON OVERFLOW MOVE 1 TO OVER-SW
           END-STRING.
           DISPLAY W-INTO.

           STRING G-02-2 DELIMITED BY G-01
                       INTO W-INTO
                       WITH POINTER W-PTR
                  ON OVERFLOW MOVE 1 TO OVER-SW
           END-STRING.      
           DISPLAY W-INTO.

           STRING G-02-2 DELIMITED BY G-02-3
                       INTO W-INTO
                       WITH POINTER W-PTR
                  ON OVERFLOW MOVE 1 TO OVER-SW
           END-STRING.                     
           DISPLAY W-INTO.

      * �R���p�C���G���[
           STRING X-01 DELIMITED BY X-02
                       INTO W-INTO-X
                       WITH POINTER W-PTR
                  ON OVERFLOW MOVE 1 TO OVER-SW
           END-STRING. 
           DISPLAY W-INTO-X.

           STRING X-03 DELIMITED BY X-02
                       INTO W-INTO-X
                       WITH POINTER W-PTR
                  ON OVERFLOW MOVE 1 TO OVER-SW
           END-STRING.            
           DISPLAY W-INTO-X.
      ****
           DISPLAY "NG?".
            DISPLAY "TEST END   (EX5-6B-3)".
           
           *>ACCEPT OMIT-WK.
           GOBACK
           .
