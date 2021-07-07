      ******************************************************************
      *    �e�X�g�P�[�X�F5-4D
      *    �v���O�������F���{�ꉻ�e�X�g �i�葱�����jINSPECT����
      *    �����T�v    �FINSPECT���߂Ő������G���[�`�F�b�N����邩�B
      *  --------------------------------------------------------------
      *  �R���p�C���G���[�̃`�F�b�N�̂��߁A���s�ł��Ȃ��B
      *   �e�X�g�P�[�X:�U�Q�`�U�T
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           EX5-4D.
       AUTHOR.               TSH.
       DATE-WRITTEN.         2011-08-25.
       DATE-COMPILED.        2011-08-25.
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
       01  W-TALLY  PIC 999.
       01  G-01     PIC N(10).
       01  GE-01    PIC NN/NNNN/NN.
       01  G-03-1   PIC N.
       01  G-03-2   PIC NN.
       01  G-04-1   PIC N.
       01  G-04-2   PIC NN.
       01  G-05-1   PIC N.
       01  G-05-2   PIC NN.
       01  G-06-1   PIC N.
       01  G-06-2   PIC NN.
       01  G-08-1   PIC N.
       01  G-08-2   PIC NN.
       01  AN-04    PIC X(4).
      ******************************************************************
       PROCEDURE             DIVISION.
      ******************************************************************
       MAIN                  SECTION.
       P-010. 
      *�P�[�X62.�G���[1�i���{�ꍀ�ވȊO�Ƃ̑g�ݍ��킹�j
            MOVE "P-620-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
          
            INSPECT G-01 REPLACING ALL "�O" BY "a".
      *     �R���p�C���G���[
      *
      *�P�[�X63.�G���[�Q�i���{�ꍀ�ވȊO�Ƃ̑g�ݍ��킹�j
            MOVE "P-630-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
          
            INSPECT G-01 REPLACING ALL "������" BY AN-04.
      *     �R���p�C���G���[
      *�P�[�X64.�G���[�Q�i�T�C�Y�s��v�j
            MOVE "P-640-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
          
            INSPECT G-01 REPLACING ALL "������" BY "��".
      *     �R���p�C���G���[
      *     
      *�P�[�X65.�G���[�R�iCHARACTERS�j
            MOVE "P-650-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
          
            INSPECT G-01 REPLACING CHARACTERS BY "������".
      *     �R���p�C���G���[
      *     
            DISPLAY "EX5-4D NG".
            *>ACCEPT OMIT-WK.
            GOBACK
            .

