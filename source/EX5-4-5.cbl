      ******************************************************************
      *    �e�X�g�P�[�X�F5-4-5
      *    �v���O�������F���{�ꉻ�e�X�g �i�葱�����jINSPECT����
      *    �����T�v    �F��Ӗ��|�P�C�萔�P�����{��ȊO�̂Ƃ��A
      *�@�@�@�@�@�@�@�@  �T�C�Y�s��v
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           EX5-4-5.
       AUTHOR.               LA.
       DATE-WRITTEN.         2011-11-09.
       DATE-COMPILED.        2011-11-09.
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
       01  OMIT-WK           PIC X.
       01  CASE-ID           PIC X(10).
       01  G-01              PIC X(20).
      ******************************************************************
       PROCEDURE             DIVISION.
      ******************************************************************
       MAIN                  SECTION.
      * 
            DISPLAY "TEST START (EX5-4-5)".
            MOVE "5-4-5"          TO CASE-ID.
            MOVE "����������"     TO G-01.
            INSPECT G-01 REPLACING ALL "��" BY "*". 
            display CASE-ID " NG:" G-01.           
      *
            DISPLAY "TEST END   (EX5-4-5)".
     
            *>ACCEPT OMIT-WK.
            GOBACK
            .
      
                  
      
       