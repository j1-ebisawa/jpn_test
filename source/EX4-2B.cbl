      ******************************************************************
      *    �e�X�g�P�[�X�F4-2B
      *    �v���O�������F���{�ꉻ�e�X�g �i�f�[�^���jPICTURE��
      *    �����T�v�@�@�FPICTURE��w�肪����Ă���Ƃ��A������
      *                  �G���[�o�͂���邩�B
      *  --------------------------------------------------------------
      *   �e�X�g�P�[�X:�U�`�V
      *          ���̃v���O�����̓G���[�`�F�b�N�̂��߁A���s�ł��Ȃ��B
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           EX4-2B.
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
       01  G-10     PIC NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN.
       01  G-11     PIC N(10)BN(10)/N(10)0N(10)9999.
       01  G-12     PIC S9(10)N(10)BN(10)/N(10)0N(10).
       01  G-13     PIC XXXN(10)N(10)N(10)N(10).
       01  G-14     PIC AAAN(10)BN(10)/N(10)0N(10).
       01  G-15     PIC S9(10)V9(3)N(10).
       01  G-16     PIC -----9(10)VN(10).
       01  G-17     PIC -----9(10).N(10).
       01  G-18     PIC N(32769).
       01  G-19     PIC N(32767)B/.
       
      ******************************************************************
       PROCEDURE             DIVISION.
      ******************************************************************
       MAIN                  SECTION.
       P-010. 
            DISPLAY "TEST START (EX4-2B)".
            go to p-end.
      *  �P�[�X1.���{��f�[�^�iN�j
      *
            DISPLAY G-10.
      *
            DISPLAY G-11.
      *
            DISPLAY G-12.
      *
            DISPLAY G-13.
      *
            DISPLAY G-14.
      *
            DISPLAY G-15.
      *
            DISPLAY G-16.
      *
            DISPLAY G-17.
      *
            DISPLAY G-18.
      *
            DISPLAY G-19.
      *
       p-end.
            display "NG".
            DISPLAY "TEST END   (EX4-2B)".
            *>ACCEPT OMIT-WK.
      *
            GOBACK
            .

