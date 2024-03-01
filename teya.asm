.386
.model flat, stdcall
        option casemap :none
        include \masm32\include\windows.inc
        include \masm32\include\kernel32.inc
        include \masm32\include\masm32.inc
        includelib \masm32\lib\kernel32.lib
        includelib \masm32\lib\masm32.lib
.data
        UM     db 9,9,9,9,9, "UNIVERSITY OF MINDANAO", 10, 0
        CollegeDepartment db 9,9,9, "     DEPARTMENT: ","COLLEGE OF COMPUTING EDUCATION", 10, 0
        Program   db 9,9,9,9,9, "    PROGRAM: ","Bachelor of Science in Information Technology", 10, 0
		Divider db 9, "-----------------------------------------------------------------------------------------", 10, 0

        ; 1st Year / 1st Sem 
        firstYear     db 10, 10, 9, "1st Year | 1st Sem", 10, 0
        F11     db 9, "NO.", 9, "Title", 9,9,   "Unit",9,9,   "Description", 10, 0
        cce101    db 9, "[1]", 9, "CCE101", 9,9,   "3.0", 9,9,   "INTRODUCTION TO COMPUTING", 10, 0
        gpe1     db 9, "[2]", 9, "GPE 1", 9,9,    "2.0", 9,9,   "MOVEMENT ENHANCEMENT", 10, 0
        ge1     db 9, "[3]", 9, "GE 1", 9,9,  "3.0", 9,9,   "UNDERSTANDING THE SELF", 10, 0
        ge6     db 9, "[4]", 9, "GE 6", 9,9,  "3.0", 9,9,   "RIZAL'S LIFE AND WORKS", 10, 0
        cce102    db 9, "[5]", 9, "CCE 102", 9,9,  "3.0", 9,9,   "COMPUTER PROGRAMMING 1", 10, 0
        ge5    db 9, "[6]", 9, "GE 5", 9,9,   "3.0", 9,9,   "SCIENCE, TECHNOLOGY AND SOCIETY", 10, 0
        ge2     db 9, "[7]", 9, "GE 2", 9,9,  "6.0", 9,9,   "PURPOSIVE COMMUNICATION W/ INTERACIVE LEARNING", 10, 0
        nstp1     db 9, "[8]", 9, "NSTP 1", 9,9,  "3.0", 9,9,   "NATIONAL SERVICE TRAINING PROGRAM 1", 10, 0
        B111   db 9, "-----------------------------------------------------------------------------------------", 0
        
        ; 1st Year / 2nd Sem 
        firstYear2     db 10, 10, 9, "1st Year | 2nd Sem", 10, 0
        F12     db 9, "NO.", 9, "Title", 9,9,   "Unit",9,9,   "Description", 10, 0
        it1    db 9, "[1]", 9, "IT 1", 9,9,  "3.0", 9,9,   "PLATFORM TECHNOLOGIES", 10, 0
        ge15     db 9, "[2]", 9, "GE 15", 9,9,  "3.0", 9,9,   "ENVIRONMENTAL SCIENCE", 10, 0
        nstp2     db 9, "[3]", 9, "NSTP 2", 9,9,  "3.0", 9,9,   "NATIONAL SERVICE TRAINING PROGRAM 2", 10, 0
        ge4     db 9, "[4]", 9, "GE 4", 9,9,   "3.0", 9,9,   "MATHEMATICS IN THE MORDERN WORLD", 10, 0
        cce103   db 9, "[5]", 9, "CCE 103", 9,9, "3.0", 9,9,   "COMPUTER PROGRAMMING 2", 10, 0
        uge1    db 9, "[6]", 9, "UGE 1", 9,9, "6.0", 9,9,   "READING COMPREHENSION", 10, 0
        gpe2     db 9, "[7]", 9, "GPE 2", 9,9,  "2.0", 9,9,   "FITNESS EXERCISES", 10, 0
        it2     db 9, "[8]", 9, "IT 2", 9,9,  "3.0", 9,9,   "DISCRETE MATHEMATICS", 10, 0
		U122    db 9, "-----------------------------------------------------------------------------------------", 0
        

        ; 2nd Year / 1st Sem 
        secondYear1     db 10, 10, 9, "2nd Year | 1st Sem", 10, 0
        S21    db 9, "NO.", 9, "Title", 9,9,   "Unit",9,9,   "Description", 10, 0
        it5     db 9, "[1]", 9, "IT 5", 9,9,    "3.0", 9,9,   "IT ELECTIVE 2", 10, 0
        cce104     db 9, "[2]", 9, "CCE 104", 9,9,  "3.0", 9,9,   "INFORMATION MANAGEMENT", 10, 0
        it3     db 9, "[3]", 9, "IT 3", 9,9,  "3.0", 9,9,   "NETWORKING 1", 10, 0
        it4     db 9, "[4]", 9, "IT 4", 9,9, "3.0", 9,9,   "CALCULUS 1", 10, 0
        gpe3     db 9, "[5]", 9, "GPE 3", 9,9,   "2.0", 9,9,   "PHYSICAL ACITIVITIES TOWARDS HEALTH AND FITNESS", 10, 0
        ge3    db 9, "[6]", 9, "GE 3", 9,9, "3.0", 9,9,   "THE CONTEMPORARY WORLD", 10, 0
        cce105     db 9, "[7]", 9, "CCE 105", 9,9, "3.0", 9,9,   "DATA STRUCTURES AND ALGORITHMS", 10, 0
        ge20     db 9, "[8]", 9, "GE 20", 9,9, "3.0", 9,9,   "READING VISUAL ARTS", 10, 0 
		E2111	db 9, "-----------------------------------------------------------------------------------------", 0

        ; 2nd Year / 2nd Sem 
        secondYear2     db 10, 10, 9, "2nd Year | 2nd Sem", 10, 0
        s22    db 9, "NO.", 9, "Title", 9,9,   "Unit",9,9,   "Description", 10, 0
        it6     db 9, "[1]", 9, "IT 6", 9,9, "3.0", 9,9,   "FUNDAMENTALS OF DATABASE SYSTEMS", 10, 0
        it8     db 9, "[2]", 9, "IT 8", 9,9,  "3.0", 9,9,   "CALCULUS 2", 10, 0
        it10     db 9, "[3]", 9, "IT 10", 9,9,  "3.0", 9,9,   "IT ELECTIVE 3", 10, 0
        it26     db 9, "[4]", 9, "IT 26", 9,9,    "6.0", 9,9,   "PROFESSIONAL TRACK FOR IT 3", 10, 0
        mth103     db 9, "[5]", 9, "MTH 103", 9,9,   "3.0", 9,9,   "PROBABILITIES AND STATISTICS", 10, 0
        gpe4    db 9, "[6]", 9, "GPE 4", 9,9, "2.0", 9,9,   "PHYSICAL ACTIVITIES TOWARDS HEALTH AND FITNESS", 10, 0
        it7     db 9, "[7]", 9, "IT 7", 9,9, "3.0", 9,9,   "INTRODUCTION TO HUMAN COMPUTER INTERACTION", 10, 0
		A222	db 9, "-----------------------------------------------------------------------------------------", 0
        

        one      db 10, 10, 9, "[1] - 1st Year & 1st Sem", 10, 0
        two      db 9, "[2] - 1st Year & 2nd Sem", 10, 0 
        three     db 9, "[3] - 2nd Year & 1st Sem", 10, 0 
        four      db 9, "[4] - 2nd Year & 2nd Sem", 10, 0

        select      db 10, 9, "Select Year and Semester: ", 0
        ;enroll      db 10, 10, 9, "ENROLL SUBJECTS", 0 
        ;key      db 10, 9, "Select a course [1-8] or enter any key to exit: ", 0
        invalid     db 9, "Invalid Input! Try Again.", 10, 0
        totalUnits      db 10, 9, "Total Units: ", 0
		
		; Revision
                WelcomeMessage db 10,9, "Hello GA! Welcome to UM - Student Portal",0
		Name_Prompt db 10,9, "Enter your name: ",0
                Name_Declared db 10,9, "Name: ",0
                ID_Prompt db 9, "Enter Student ID Number: ",0
                ID_Declared db 10,9, "Student ID Number: ", 0
		; Print Revision
		Sub_En db 10,10,9, "SUBJECTS ENROLLED:",0
		print1 db 256 dup (0)
		print2 db 256 dup (0)
		print3 db 256 dup (0)
		print4 db 256 dup (0)
		print5 db 256 dup (0)
		print6 db 256 dup (0)
		print7 db 256 dup (0)
		print8 db 256 dup (0)
        
		
        I7 DWORD ? ;11
        L7 DWORD ? ;12
        L71 DWORD ? ;1S
        E7 DWORD ? ;21
        A7 DWORD ? ;22
        L72 DWORD ? ;2S
        P7 DWORD ? ;31
        U7 DWORD ? ;32
        E71 DWORD ? ;41
        R7 DWORD ? ;42
              
        ;T8      db 10, 9, "Select a course [1-7] or enter any key to exit: ", 

.data?
        B9 db 10 dup (?)
        R9 db 10 dup (?)
        I9 db 10 dup (?)
        L9 db 10 dup (?)
        L91 db 10 dup (?)
        E9 db 10 dup (?)
        A9 db 10 dup (?)
        L92 db 10 dup (?)
        P9 db 10 dup (?)
        U9 db 10 dup (?)
        E91 db 10 dup (?)
		
		Name_Input db 10 dup(?)
                ID_Input db 10 dup(?)
.code   
start:
        invoke ClearScreen
		mov print1,0
		mov print2,0
		mov print3,0
		mov print4,0
		mov print5,0
		mov print6,0
		mov print7,0
		mov print8,0
		
		;name prompt
        invoke StdOut, addr WelcomeMessage
        invoke StdOut, addr Name_Prompt
        invoke StdIn, addr Name_Input, 100 
        invoke StdOut, addr ID_Prompt
        invoke StdIn, addr ID_Input, 100 
		jmp begin
begin:
        invoke ClearScreen
        invoke StdOut, addr UM
        invoke StdOut, addr CollegeDepartment
        invoke StdOut, addr Divider
		invoke StdOut, addr Divider

        ;11
        invoke StdOut, addr firstYear
        invoke StdOut, addr F11
        invoke StdOut, addr cce101
        invoke StdOut, addr gpe1
        invoke StdOut, addr ge1
        invoke StdOut, addr ge6
        invoke StdOut, addr cce102
        invoke StdOut, addr ge5
        invoke StdOut, addr ge2
        invoke StdOut, addr nstp1
		invoke StdOut, addr B111
        
        ;12
        invoke StdOut, addr firstYear2
        invoke StdOut, addr F12
        invoke StdOut, addr it1
        invoke StdOut, addr ge15
        invoke StdOut, addr nstp2
        invoke StdOut, addr ge4
        invoke StdOut, addr cce103
        invoke StdOut, addr uge1
        invoke StdOut, addr gpe2
        invoke StdOut, addr it2
		invoke StdOut, addr U122


        ;21
        invoke StdOut, addr secondYear1
        invoke StdOut, addr S21
        invoke StdOut, addr it5
        invoke StdOut, addr cce104
        invoke StdOut, addr it3
        invoke StdOut, addr it4
        invoke StdOut, addr gpe3
        invoke StdOut, addr ge3
        invoke StdOut, addr cce105
        invoke StdOut, addr ge20
		invoke StdOut, addr E2111

        ;22
        invoke StdOut, addr secondYear2
        invoke StdOut, addr s22
        invoke StdOut, addr it6
        invoke StdOut, addr it8
        invoke StdOut, addr it10
        invoke StdOut, addr it26
        invoke StdOut, addr mth103
        invoke StdOut, addr gpe4
        invoke StdOut, addr it7
		invoke StdOut, addr A222

		jmp choices

choices:
        ;choices
        invoke StdOut, addr one
        invoke StdOut, addr two
        invoke StdOut, addr three
        invoke StdOut, addr four

        ;fnctns
        invoke StdOut, addr select
        invoke StdIn, addr B9, 10
        .if B9 == '1'
                jmp firstyear1
        .elseif B9 == '2'
                jmp firstyear2
        .elseif B9 == '3'
                jmp secondyear1
        .elseif B9 == '4'
                jmp secondyear2
        .endif

firstyear1:
        invoke ClearScreen
        invoke StdOut, addr UM
	invoke StdOut, addr CollegeDepartment
	invoke StdOut, addr Divider
	invoke StdOut, addr Divider
	invoke StdOut, addr Name_Declared
	invoke StdOut, addr Name_Input
        invoke StdOut, addr ID_Declared
        invoke StdOut, addr ID_Input
        invoke StdOut, addr firstYear
        invoke StdOut, addr F11
        invoke StdOut, addr cce101
        invoke StdOut, addr gpe1
        invoke StdOut, addr ge1
        invoke StdOut, addr ge6
        invoke StdOut, addr cce102
        invoke StdOut, addr ge5
        invoke StdOut, addr ge2

        invoke StdOut, addr firstYear2
        invoke StdOut, addr F12
        invoke StdOut, addr it1
        invoke StdOut, addr ge15
        invoke StdOut, addr nstp2
        invoke StdOut, addr ge4
        invoke StdOut, addr cce103
        invoke StdOut, addr uge1
        invoke StdOut, addr gpe2
        invoke StdOut, addr it2
        jmp exit	

firstyear2:
        invoke ClearScreen
        invoke StdOut, addr firstYear2
        invoke StdOut, addr F12
        invoke StdOut, addr it1
        invoke StdOut, addr ge15
        invoke StdOut, addr nstp2
        invoke StdOut, addr ge4
        invoke StdOut, addr cce103
        invoke StdOut, addr uge1
        invoke StdOut, addr gpe2
        invoke StdOut, addr it2
        jmp exit


secondyear1:
        invoke ClearScreen
        invoke StdOut, addr UM
	invoke StdOut, addr CollegeDepartment
	invoke StdOut, addr Divider
	invoke StdOut, addr Divider
	invoke StdOut, addr Name_Declared
	invoke StdOut, addr Name_Input
        invoke StdOut, addr ID_Declared
        invoke StdOut, addr ID_Input
        invoke StdOut, addr secondYear1
        invoke StdOut, addr S21
        invoke StdOut, addr it5
        invoke StdOut, addr cce104
        invoke StdOut, addr it3
        invoke StdOut, addr it4
        invoke StdOut, addr gpe3
        invoke StdOut, addr ge3
        invoke StdOut, addr cce105
        invoke StdOut, addr ge20

        invoke StdOut, addr secondYear2
        invoke StdOut, addr s22
        invoke StdOut, addr it6
        invoke StdOut, addr it8
        invoke StdOut, addr it10
        invoke StdOut, addr it26
        invoke StdOut, addr mth103
        invoke StdOut, addr gpe4
        invoke StdOut, addr it7
        
        jmp exit



secondyear2:
        invoke ClearScreen
        invoke StdOut, addr secondYear2
        invoke StdOut, addr s22
        invoke StdOut, addr it6
        invoke StdOut, addr it8
        invoke StdOut, addr it10
        invoke StdOut, addr it26
        invoke StdOut, addr mth103
        invoke StdOut, addr gpe4
        invoke StdOut, addr it7
        jmp select22

select22:
        ;invoke StdOut, addr key
        invoke StdIn, addr E9, 10
        .if E9 == "1"
                add eax, 3
                sub eax, 1
                add A7, eax 
                invoke StdOut, addr it6
				mov esi, OFFSET it6
                mov edi, OFFSET print1
                mov ecx, SIZEOF it6
                cld
                rep movsb
        .elseif E9 == "2"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr it8
				mov esi, OFFSET it8
                mov edi, OFFSET print2
                mov ecx, SIZEOF it8
                cld
                rep movsb
        .elseif E9 == "3"
                add eax, 6
                sub eax, 1
                add A7, eax
                invoke StdOut, addr it10
				mov esi, OFFSET it10
                mov edi, OFFSET print3
                mov ecx, SIZEOF it10
                cld
                rep movsb
        .elseif E9 == "4"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr it26
				mov esi, OFFSET it26
                mov edi, OFFSET print4
                mov ecx, SIZEOF it26
                cld
                rep movsb
        .elseif E9 == "5"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr mth103
				mov esi, OFFSET mth103
                mov edi, OFFSET print5
                mov ecx, SIZEOF mth103
                cld
                rep movsb
        .elseif E9 == "6"
                add eax, 2
                sub eax, 1
                add A7, eax
                invoke StdOut, addr gpe4
				mov esi, OFFSET gpe4
                mov edi, OFFSET print6
                mov ecx, SIZEOF gpe4
                cld
                rep movsb
        .elseif E9 == "7"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr it7
				mov esi, OFFSET it7
                mov edi, OFFSET print7
                mov ecx, SIZEOF it7
                cld
                rep movsb
        .else
        jmp total22
        .endif
        jmp select22

total22:
        mov eax, A7
        invoke dwtoa, eax, addr E9
        jmp print22
print22:
		invoke ClearScreen
		invoke StdOut, addr UM
		invoke StdOut, addr CollegeDepartment
		invoke StdOut, addr Divider
		invoke StdOut, addr Divider
		invoke StdOut, addr Name_Declared
		invoke StdOut, addr Name_Input
		invoke StdOut, addr Sub_En
		
		;copy for Divider top
		invoke StdOut, addr secondYear2
		invoke StdOut, addr s22
		;copy for Divider bottom
		
		invoke StdOut, addr print1
		invoke StdOut, addr print2
		invoke StdOut, addr print3
		invoke StdOut, addr print4
		invoke StdOut, addr print5
		invoke StdOut, addr print6
		invoke StdOut, addr print7
		invoke StdOut, addr print8
		
		;total units
		invoke StdOut, addr totalUnits
		;for the if condition
		invoke StdOut, addr E9
		
		jmp exit
		
exit:
        invoke ExitProcess, 0
end start
