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
        Program   db 9,9, "    PROGRAM: ","BACHELOR OF SCIENCE IN INFORMATION TECHNOLOGY", 10, 0
		Divider db 9, "-----------------------------------------------------------------------------------------", 10, 0

        ; 1st Year / 1st Sem 
        firstYear     db 10, 10, 9, "1st Year | 1st Sem", 10, 0
        F11     db 9, "NO.", 9, "Title", 9,9,   "Unit",9,9,   "Description", 10, 0
        cce101    db 9, "[A]", 9, "CCE101", 9,9,   "3.0", 9,9,   "INTRODUCTION TO COMPUTING", 10, 0
        gpe1     db 9, "[B]", 9, "GPE 1", 9,9,    "2.0", 9,9,   "MOVEMENT ENHANCEMENT", 10, 0
        ge1     db 9, "[C]", 9, "GE 1", 9,9,  "3.0", 9,9,   "UNDERSTANDING THE SELF", 10, 0
        ge6     db 9, "[D]", 9, "GE 6", 9,9,  "3.0", 9,9,   "RIZAL'S LIFE AND WORKS", 10, 0
        cce102    db 9, "[E]", 9, "CCE 102", 9,9,  "3.0", 9,9,   "COMPUTER PROGRAMMING 1", 10, 0
        ge5    db 9, "[F]", 9, "GE 5", 9,9,   "3.0", 9,9,   "SCIENCE, TECHNOLOGY AND SOCIETY", 10, 0
        ge2     db 9, "[G]", 9, "GE 2", 9,9,  "6.0", 9,9,   "PURPOSIVE COMMUNICATION W/ INTERACIVE LEARNING", 10, 0
        nstp1     db 9, "[H]", 9, "NSTP 1", 9,9,  "3.0", 9,9,   "NATIONAL SERVICE TRAINING PROGRAM 1", 10, 0
        B111   db 9, "-----------------------------------------------------------------------------------------", 0
        
        ; 1st Year / 2nd Sem 
        firstYear2     db 10, 10, 9, "1st Year | 2nd Sem", 10, 0
        F12     db 9, "NO.", 9, "Title", 9,9,   "Unit",9,9,   "Description", 10, 0
        it1    db 9, "[I]", 9, "IT 1", 9,9,  "3.0", 9,9,   "PLATFORM TECHNOLOGIES", 10, 0
        ge15     db 9, "[J]", 9, "GE 15", 9,9,  "3.0", 9,9,   "ENVIRONMENTAL SCIENCE", 10, 0
        nstp2     db 9, "[K]", 9, "NSTP 2", 9,9,  "3.0", 9,9,   "NATIONAL SERVICE TRAINING PROGRAM 2", 10, 0
        ge4     db 9, "[L]", 9, "GE 4", 9,9,   "3.0", 9,9,   "MATHEMATICS IN THE MORDERN WORLD", 10, 0
        cce103   db 9, "[M]", 9, "CCE 103", 9,9, "3.0", 9,9,   "COMPUTER PROGRAMMING 2", 10, 0
        uge1    db 9, "[N]", 9, "UGE 1", 9,9, "6.0", 9,9,   "READING COMPREHENSION", 10, 0
        gpe2     db 9, "[O]", 9, "GPE 2", 9,9,  "2.0", 9,9,   "FITNESS EXERCISES", 10, 0
        it2     db 9, "[P]", 9, "IT 2", 9,9,  "3.0", 9,9,   "DISCRETE MATHEMATICS", 10, 0
		U122    db 9, "-----------------------------------------------------------------------------------------", 0
        

        ; 2nd Year / 1st Sem 
        secondYear1     db 10, 10, 9, "2nd Year | 1st Sem", 10, 0
        S21    db 9, "NO.", 9, "Title", 9,9,   "Unit",9,9,   "Description", 10, 0
        it5     db 9, "[A]", 9, "IT 5", 9,9,    "3.0", 9,9,   "IT ELECTIVE 2", 10, 0
        cce104     db 9, "[B]", 9, "CCE 104", 9,9,  "3.0", 9,9,   "INFORMATION MANAGEMENT", 10, 0
        it3     db 9, "[C]", 9, "IT 3", 9,9,  "3.0", 9,9,   "NETWORKING 1", 10, 0
        it4     db 9, "[D]", 9, "IT 4", 9,9, "3.0", 9,9,   "CALCULUS 1", 10, 0
        gpe3     db 9, "[E]", 9, "GPE 3", 9,9,   "2.0", 9,9,   "PHYSICAL ACITIVITIES TOWARDS HEALTH AND FITNESS", 10, 0
        ge3    db 9, "[F]", 9, "GE 3", 9,9, "3.0", 9,9,   "THE CONTEMPORARY WORLD", 10, 0
        cce105     db 9, "[G]", 9, "CCE 105", 9,9, "3.0", 9,9,   "DATA STRUCTURES AND ALGORITHMS", 10, 0
        ge20     db 9, "[H]", 9, "GE 20", 9,9, "3.0", 9,9,   "READING VISUAL ARTS", 10, 0 
		E2111	db 9, "-----------------------------------------------------------------------------------------", 0

        ; 2nd Year / 2nd Sem 
        secondYear2     db 10, 10, 9, "2nd Year | 2nd Sem", 10, 0
        s22    db 9, "NO.", 9, "Title", 9,9,   "Unit",9,9,   "Description", 10, 0
        it6     db 9, "[I]", 9, "IT 6", 9,9, "3.0", 9,9,   "FUNDAMENTALS OF DATABASE SYSTEMS", 10, 0
        it8     db 9, "[J]", 9, "IT 8", 9,9,  "3.0", 9,9,   "CALCULUS 2", 10, 0
        it10     db 9, "[K]", 9, "IT 10", 9,9,  "3.0", 9,9,   "IT ELECTIVE 3", 10, 0
        it26     db 9, "[L]", 9, "IT 26", 9,9,    "6.0", 9,9,   "PROFESSIONAL TRACK FOR IT 3", 10, 0
        mth103     db 9, "[M]", 9, "MTH 103", 9,9,   "3.0", 9,9,   "PROBABILITIES AND STATISTICS", 10, 0
        gpe4    db 9, "[N]", 9, "GPE 4", 9,9, "2.0", 9,9,   "PHYSICAL ACTIVITIES TOWARDS HEALTH AND FITNESS", 10, 0
        it7     db 9, "[O]", 9, "IT 7", 9,9, "3.0", 9,9,   "INTRODUCTION TO HUMAN COMPUTER INTERACTION", 10, 0
		A222	db 9, "-----------------------------------------------------------------------------------------", 0
        

        ; 3rd Year / 1st Sem
        thirdYear     db 10, 10, 9, "3rd Year | 1st Sem", 10, 0
        s23    db 9, "NO.", 9, "Title", 9,9,   "Unit",9,9,   "Description", 10, 0
        it11     db 9, "[A]", 9, "IT 11", 9,9, "3.0", 9,9,   "NETWORKING 2", 10, 0
        ge9     db 9, "[B]", 9, "GE 9", 9,9,  "3.0", 9,9,   "ETHICS (Disciplinal)", 10, 0
        ge8     db 9, "[C]", 9, "GE 8", 9,9,  "3.0", 9,9,   "READING IN PHILIPPINE HISTORY", 10, 0
        phys101  db 9, "[D]", 9, "PHYS 101" ,9, "4.0", 9,9,   "COLLEGE PHYSICS 1", 10, 0
        it12     db 9, "[E]", 9, "IT 12", 9,9,   "3.0", 9,9,   "SYSTEM INTEGRATION & ARCHITECTURE", 10, 0
        it14    db 9, "[F]", 9, "IT 14", 9,9, "3.0", 9,9,   "PROFESSIONAL TRACK FOR IT 5", 10, 0
        ge11     db 9, "[G]", 9, "GE 11", 9,9, "3.0", 9,9,   "THE ENTREPRENEURIAL MIND", 10, 0
        it13     db 9, "[H]", 9, "IT 13", 9,9, "3.0", 9,9,   "PROFESSIONAL TRACK FOR IT 4", 10, 0

        ; 3rd Year / 2nd Sem
        thirdYear2     db 10, 10, 9, "3rd Year | 2nd Sem", 10, 0
        s24    db 9, "NO.", 9, "Title", 9,9,   "Unit",9,9,   "Description", 10, 0
        it16     db 9, "[I]", 9, "IT 16", 9,9, "3.0", 9,9,   "INFORMATION ASSURANCE AND SECURITY 1", 10, 0
        uge2     db 9, "[J]", 9, "UGE 2", 9,9,  "3.0", 9,9,   "TECHNICAL WRITING IN THE DISCIPLINE", 10, 0
        it15     db 9, "[K]", 9, "IT 15", 9,9,  "3.0", 9,9,   "INTEGRATIVE PROGRAMMING AND TECHNOLOGIES", 10, 0
        it18     db 9, "[L]", 9, "IT 18", 9,9,    "3.0", 9,9,   "QUANTITATIVE METHODS", 10, 0
        it19     db 9, "[M]", 9, "IT 19", 9,9,   "3.0", 9,9,   "TECHNOPRENEURSHIP", 10, 0
        it20    db 9, "[N]", 9, "IT 20", 9,9, "3.0", 9,9,   "PROFESSIONAL TRACK FOR IT 6", 10, 0
        phys102  db 9, "[O]", 9, "PHYS 102" ,9, "4.0", 9,9,   "COLLEGE PHYSICS 2", 10, 0
        ge7     db 9, "[P]", 9, "GE 7", 9,9, "3.0", 9,9,   "ART APPRECIATION", 10, 0


        ; 3rd Year / Summer
        thirdYear3     db 10, 10, 9, "3rd Year | Summer", 10, 0
        s25    db 9, "NO.", 9, "Title", 9,9,   "Unit",9,9,   "Description", 10, 0
        it22     db 9, "[Q]", 9, "IT 22", 9,9, "3.0", 9,9,   "CAPSTONE PROJECT 1", 10, 0
        it21     db 9, "[R]", 9, "IT 21", 9,9,  "3.0", 9,9,   "INFORMATION ASSURANCE AND SECURITY 2", 10, 0
        
        ; 4th Year / 1st Sem
        fourthYear1     db 10, 10, 9, "4th Year | 1st Sem", 10, 0
        s26    db 9, "NO.", 9, "Title", 9,9,   "Unit",9,9,   "Description", 10, 0
        cce106     db 9, "[A]", 9, "CCE 106", 9,9, "3.0", 9,9,   "APPLICATIONS DEV'T AND EMERGING TECHNOLOGIES", 10, 0
        it24     db 9, "[B]", 9, "IT 24", 9,9,  "6.0", 9,9,   "CAPSTONE PROJECT 2", 10, 0
        caed500c     db 9, "[C]", 9, "CAED 500C", 9,  "3.0", 9,9,   "CAREER AND PERSONALITY DEVELOPMENT", 10, 0
        it17     db 9, "[D]", 9, "IT 17", 9,9,  "3.0", 9,9,   "SOCIAL AND PROFESSIONAL ISSUES", 10, 0
        it23     db 9, "[E]", 9, "IT 23", 9,9,  "3.0", 9,9,   "SYSTEMS ADMINISTRATON AND MAINTENANCE", 10, 0
        
        ; 4th Year / 2nd Sem
        fourthYear2     db 10, 10, 9, "4th Year | 2nd Sem", 10, 0
        s27    db 9, "NO.", 9, "Title", 9,9,   "Unit",9,9,   "Description", 10, 0
        it25     db 9, "[F]", 9, "IT 25", 9,9, "9.0", 9,9,   "PRACTICUM", 10, 0

        one db 10, 10, 9, "[1] - 1st Year & 1st Sem", 10, 0
        two db 9, "[2] - 1st Year & 2nd Sem", 10, 0 
        three db 9, "[3] - 2nd Year & 1st Sem", 10, 0 
        four db 9, "[4] - 2nd Year & 2nd Sem", 10, 0
        five db 9, "[5] - 3rd Year & 1st Sem", 10, 0
        six db 9, "[6] - 3rd Year & 2nd Sem", 10, 0
        seven db 9, "[7] - 3rd Year & Summer", 10, 0
        eight db 9, "[8] - 4th Year & 1st Sem", 10, 0
        nine db 9, "[9] - 4th Year & 2nd Sem", 10, 0

        select      db 10, 9, "Select Year and Semester: ", 0
        enroll      db 10, 10, 9, "ENROLL SUBJECTS", 0 
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
                print9 db 256 dup (0)
		print10 db 256 dup (0)
		print11 db 256 dup (0)
		print12 db 256 dup (0)
		print13 db 256 dup (0)
		print14 db 256 dup (0)
		print15 db 256 dup (0)
		print16 db 256 dup (0)
        

        L7 DWORD ? 
        E7 DWORD ? 
        A7 DWORD ? 
              
        selectCourse_prompt    db 10, 9, "Select a course with their corresponding letter or any key to enroll", 10, 0

.data?
        B9 db 50 dup (?)
        E9 db 50 dup (?)
		Name_Input db 20 dup(?)
                ID_Input db 20 dup(?)
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
                mov print9,0
		mov print10,0
		mov print11,0
		mov print12,0
		mov print13,0
		mov print14,0
		mov print15,0
		mov print16,0
                
		
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
        invoke StdOut, addr Program
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

        ;31
        invoke StdOut, addr thirdYear
        invoke StdOut, addr s23
        invoke StdOut, addr it11
        invoke StdOut, addr ge9
        invoke StdOut, addr ge8
        invoke StdOut, addr phys101
        invoke StdOut, addr it12
        invoke StdOut, addr it14
        invoke StdOut, addr ge11
        invoke StdOut, addr it13
		invoke StdOut, addr A222

        ;32
        invoke StdOut, addr thirdYear2
        invoke StdOut, addr s24
        invoke StdOut, addr it16
        invoke StdOut, addr uge2
        invoke StdOut, addr it15
        invoke StdOut, addr it18
        invoke StdOut, addr it19
        invoke StdOut, addr it20
        invoke StdOut, addr phys102
        invoke StdOut, addr ge7
		invoke StdOut, addr A222
        
        ;33
        invoke StdOut, addr thirdYear3
        invoke StdOut, addr s25
        invoke StdOut, addr it22
        invoke StdOut, addr it21
		invoke StdOut, addr A222
        ;41
        invoke StdOut, addr fourthYear1
        invoke StdOut, addr s26
        invoke StdOut, addr cce106
        invoke StdOut, addr uge2
        invoke StdOut, addr it24
        invoke StdOut, addr caed500c
        invoke StdOut, addr it17
        invoke StdOut, addr it23
		invoke StdOut, addr A222
        ;42
        invoke StdOut, addr fourthYear2
        invoke StdOut, addr s27
        invoke StdOut, addr it25

	        jmp choices

choices:
        ;choices
        invoke StdOut, addr one
        invoke StdOut, addr two
        invoke StdOut, addr three
        invoke StdOut, addr four
        invoke StdOut, addr five
        invoke StdOut, addr six
        invoke StdOut, addr seven
        invoke StdOut, addr eight
        invoke StdOut, addr nine

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
        .elseif B9 == '5'
                jmp thirdyear1
        .elseif B9 == '6'
                jmp thirdyear2
        .elseif B9 == '7'
                jmp thirdyear3
        .elseif B9 == '8'
                jmp fourthyear1
        .elseif B9 == '9'
                jmp fourthyear2
        .endif

firstyear1:
        invoke ClearScreen
        invoke StdOut, addr UM
	invoke StdOut, addr CollegeDepartment
        invoke StdOut, addr Program
	invoke StdOut, addr Divider
	invoke StdOut, addr Divider
	invoke StdOut, addr Name_Declared
	invoke StdOut, addr Name_Input
        invoke StdOut, addr ID_Declared
        invoke StdOut, addr ID_Input

        invoke StdOut, addr enroll
        invoke StdOut, addr firstYear
        invoke StdOut, addr F11
        invoke StdOut, addr cce101
        invoke StdOut, addr gpe1
        invoke StdOut, addr ge1
        invoke StdOut, addr ge6
        invoke StdOut, addr cce102
        invoke StdOut, addr ge5
        invoke StdOut, addr ge2
        jmp select1

select1:
        invoke StdOut, addr selectCourse_prompt 
        invoke StdIn, addr E9, 10
        .if E9 == "A"
                add eax, 3
                sub eax, 1
                add A7, eax 
                invoke StdOut, addr cce101
				mov esi, OFFSET cce101
                mov edi, OFFSET print1
                mov ecx, SIZEOF cce101
                cld
                rep movsb
        .elseif E9 == "B"
                add eax, 2
                sub eax, 1
                add A7, eax
                invoke StdOut, addr gpe1
				mov esi, OFFSET gpe1
                mov edi, OFFSET print2
                mov ecx, SIZEOF gpe1
                cld
                rep movsb
        .elseif E9 == "C"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr ge1
				mov esi, OFFSET ge1
                mov edi, OFFSET print3
                mov ecx, SIZEOF ge1
                cld
                rep movsb
        .elseif E9 == "D"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr ge6
				mov esi, OFFSET ge6
                mov edi, OFFSET print4
                mov ecx, SIZEOF ge6
                cld
                rep movsb
        .elseif E9 == "E"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr cce102
				mov esi, OFFSET cce102
                mov edi, OFFSET print5
                mov ecx, SIZEOF cce102
                cld
                rep movsb
        .elseif E9 == "F"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr ge5
				mov esi, OFFSET ge5
                mov edi, OFFSET print6
                mov ecx, SIZEOF ge5
                cld
                rep movsb
        .elseif E9 == "G"
                add eax, 6
                sub eax, 1
                add A7, eax
                invoke StdOut, addr ge2
				mov esi, OFFSET ge2
                mov edi, OFFSET print7
                mov ecx, SIZEOF ge2
                cld
                rep movsb
        .elseif E9 == "H"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr nstp1
				mov esi, OFFSET nstp1
                mov edi, OFFSET print8
                mov ecx, SIZEOF nstp1
                cld
                rep movsb
        .else
        jmp total1st
        .endif
        jmp select1

total1st:
        mov eax, A7
        invoke dwtoa, eax, addr E9
        jmp print1st
print1st:
		invoke ClearScreen
		invoke StdOut, addr UM
		invoke StdOut, addr CollegeDepartment
                invoke StdOut, addr Program
		invoke StdOut, addr Divider
		invoke StdOut, addr Divider
		invoke StdOut, addr Name_Declared
		invoke StdOut, addr Name_Input
                invoke StdOut, addr ID_Declared
                invoke StdOut, addr ID_Input
		invoke StdOut, addr Sub_En
		
		;copy for Divider top
		invoke StdOut, addr firstYear
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
                invoke StdOut, addr print9

		;total units
		invoke StdOut, addr totalUnits
		;for the if condition
		invoke StdOut, addr E9
		
		jmp exit

	

firstyear2:
        invoke ClearScreen
        invoke StdOut, addr UM
	invoke StdOut, addr CollegeDepartment
        invoke StdOut, addr Program
	invoke StdOut, addr Divider
	invoke StdOut, addr Divider
	invoke StdOut, addr Name_Declared
	invoke StdOut, addr Name_Input
        invoke StdOut, addr ID_Declared
        invoke StdOut, addr ID_Input
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
        jmp select2

select2:
        invoke StdOut, addr selectCourse_prompt 
        invoke StdIn, addr E9, 10
        .if E9 == "I"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr it1
				mov esi, OFFSET it1
                mov edi, OFFSET print9
                mov ecx, SIZEOF it1
                cld
                rep movsb
        .elseif E9 == "J"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr ge15
				mov esi, OFFSET ge15
                mov edi, OFFSET print10
                mov ecx, SIZEOF ge15
                cld
                rep movsb
         .elseif E9 == "K"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr nstp2
				mov esi, OFFSET nstp2
                mov edi, OFFSET print11
                mov ecx, SIZEOF nstp2
                cld
                rep movsb
        .elseif E9 == "L"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr ge4
				mov esi, OFFSET ge4
                mov edi, OFFSET print12
                mov ecx, SIZEOF ge4
                cld
                rep movsb
        .elseif E9 == "M"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr cce103
				mov esi, OFFSET cce103
                mov edi, OFFSET print13
                mov ecx, SIZEOF cce103
                cld
                rep movsb
        .elseif E9 == "N"
                add eax, 6
                sub eax, 1
                add A7, eax
                invoke StdOut, addr uge1
				mov esi, OFFSET uge1
                mov edi, OFFSET print14
                mov ecx, SIZEOF uge1
                cld
                rep movsb
        .elseif E9 == "O"
                add eax, 2
                sub eax, 1
                add A7, eax
                invoke StdOut, addr gpe2
				mov esi, OFFSET gpe2
                mov edi, OFFSET print15
                mov ecx, SIZEOF gpe2
                cld
                rep movsb
        .elseif E9 == "P"
                add eax, 2
                sub eax, 1
                add A7, eax
                invoke StdOut, addr it2
				mov esi, OFFSET it2
                mov edi, OFFSET print16
                mov ecx, SIZEOF it2
                cld
                rep movsb
        .else
        jmp total1st2
        .endif
        jmp select2

total1st2:
        mov eax, A7
        invoke dwtoa, eax, addr E9
        jmp print1st2

print1st2:
                invoke ClearScreen
		invoke StdOut, addr UM
		invoke StdOut, addr CollegeDepartment
                invoke StdOut, addr Program
		invoke StdOut, addr Divider
		invoke StdOut, addr Divider
		invoke StdOut, addr Name_Declared
		invoke StdOut, addr Name_Input
                invoke StdOut, addr ID_Declared
                invoke StdOut, addr ID_Input
		invoke StdOut, addr Sub_En
		
		;copy for Divider top
		invoke StdOut, addr firstYear
		invoke StdOut, addr s22
		;copy for Divider bottom

                invoke StdOut, addr print10
                invoke StdOut, addr print11
                invoke StdOut, addr print12
                invoke StdOut, addr print13
                invoke StdOut, addr print14
                invoke StdOut, addr print15
                invoke StdOut, addr print16

                invoke StdOut, addr totalUnits
		;for the if condition
		invoke StdOut, addr E9
		
		jmp exit


secondyear1:
        invoke ClearScreen
        invoke StdOut, addr UM
	invoke StdOut, addr CollegeDepartment
        invoke StdOut, addr Program
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
        
        jmp select21

select21:
        invoke StdOut, addr selectCourse_prompt 
        invoke StdIn, addr E9, 10
        .if E9 == "A"
                add eax, 3
                sub eax, 1
                add A7, eax 
                invoke StdOut, addr it5
				mov esi, OFFSET it5
                mov edi, OFFSET print1
                mov ecx, SIZEOF it5
                cld
                rep movsb
        .elseif E9 == "B"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr cce104
				mov esi, OFFSET cce104
                mov edi, OFFSET print2
                mov ecx, SIZEOF cce104
                cld
                rep movsb
        .elseif E9 == "C"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr it3
				mov esi, OFFSET it3
                mov edi, OFFSET print3
                mov ecx, SIZEOF it3
                cld
                rep movsb
        .elseif E9 == "D"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr it4
				mov esi, OFFSET it4
                mov edi, OFFSET print4
                mov ecx, SIZEOF it4
                cld
                rep movsb
        .elseif E9 == "E"
                add eax, 2
                sub eax, 1
                add A7, eax
                invoke StdOut, addr gpe3
				mov esi, OFFSET gpe3
                mov edi, OFFSET print5
                mov ecx, SIZEOF gpe3
                cld
                rep movsb
        .elseif E9 == "F"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr ge3
				mov esi, OFFSET ge3
                mov edi, OFFSET print6
                mov ecx, SIZEOF ge3
                cld
                rep movsb
        .elseif E9 == "G"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr cce105
				mov esi, OFFSET cce105
                mov edi, OFFSET print7
                mov ecx, SIZEOF cce105
                cld
                rep movsb
         .elseif E9 == "H"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr ge20
				mov esi, OFFSET ge20
                mov edi, OFFSET print8
                mov ecx, SIZEOF ge20
                cld
                rep movsb
        .else
        jmp total2nd
        .endif
        jmp select21

total2nd:
        mov eax, A7
        invoke dwtoa, eax, addr E9
        jmp print2nd

print2nd:
		invoke ClearScreen
		invoke StdOut, addr UM
		invoke StdOut, addr CollegeDepartment
                invoke StdOut, addr Program
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


;2ND YEAR 2ND SEM
secondyear2:
        invoke ClearScreen
        invoke StdOut, addr UM
	invoke StdOut, addr CollegeDepartment
        invoke StdOut, addr Program
	invoke StdOut, addr Divider
	invoke StdOut, addr Divider
	invoke StdOut, addr Name_Declared
	invoke StdOut, addr Name_Input
        invoke StdOut, addr ID_Declared
        invoke StdOut, addr ID_Input

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
        invoke StdOut, addr selectCourse_prompt 
        invoke StdIn, addr E9, 10
        .if E9 == "I"
                add eax, 3
                sub eax, 1
                add A7, eax 
                invoke StdOut, addr it6
				mov esi, OFFSET it6
                mov edi, OFFSET print1
                mov ecx, SIZEOF it6
                cld
                rep movsb
        .elseif E9 == "J"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr it8
				mov esi, OFFSET it8
                mov edi, OFFSET print2
                mov ecx, SIZEOF it8
                cld
                rep movsb
        .elseif E9 == "K"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr it10
				mov esi, OFFSET it10
                mov edi, OFFSET print3
                mov ecx, SIZEOF it10
                cld
                rep movsb
        .elseif E9 == "L"
                add eax, 6
                sub eax, 1
                add A7, eax
                invoke StdOut, addr it26
				mov esi, OFFSET it26
                mov edi, OFFSET print4
                mov ecx, SIZEOF it26
                cld
                rep movsb
        .elseif E9 == "M"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr mth103
				mov esi, OFFSET mth103
                mov edi, OFFSET print5
                mov ecx, SIZEOF mth103
                cld
                rep movsb
        .elseif E9 == "N"
                add eax, 2
                sub eax, 1
                add A7, eax
                invoke StdOut, addr gpe4
				mov esi, OFFSET gpe4
                mov edi, OFFSET print6
                mov ecx, SIZEOF gpe4
                cld
                rep movsb
        .elseif E9 == "O"
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
        jmp total2nd2
        .endif
        jmp select22

total2nd2:
        mov eax, A7
        invoke dwtoa, eax, addr E9
        jmp print2nd2

print2nd2:
		invoke ClearScreen
		invoke StdOut, addr UM
		invoke StdOut, addr CollegeDepartment
                invoke StdOut, addr Program
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


;3RD YEAR FIRST SEM
thirdyear1:
        invoke ClearScreen
        invoke StdOut, addr UM
	invoke StdOut, addr CollegeDepartment
        invoke StdOut, addr Program
	invoke StdOut, addr Divider
	invoke StdOut, addr Divider
	invoke StdOut, addr Name_Declared
	invoke StdOut, addr Name_Input
        invoke StdOut, addr ID_Declared
        invoke StdOut, addr ID_Input

        invoke StdOut, addr thirdYear
        invoke StdOut, addr s23
        invoke StdOut, addr it11
        invoke StdOut, addr ge9
        invoke StdOut, addr ge8
        invoke StdOut, addr phys101
        invoke StdOut, addr it12
        invoke StdOut, addr it14
        invoke StdOut, addr ge11
        invoke StdOut, addr it13
        
        jmp select31

select31:
        invoke StdOut, addr selectCourse_prompt 
        invoke StdIn, addr E9, 10
        .if E9 == "A"
                add eax, 3
                sub eax, 1
                add A7, eax 
                invoke StdOut, addr it11
				mov esi, OFFSET it11
                mov edi, OFFSET print1
                mov ecx, SIZEOF it11
                cld
                rep movsb
        .elseif E9 == "B"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr ge9
				mov esi, OFFSET ge9
                mov edi, OFFSET print2
                mov ecx, SIZEOF ge9
                cld
                rep movsb
        .elseif E9 == "C"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr ge8
				mov esi, OFFSET ge8
                mov edi, OFFSET print3
                mov ecx, SIZEOF ge8
                cld
                rep movsb
        .elseif E9 == "D"
                add eax, 4
                sub eax, 1
                add A7, eax
                invoke StdOut, addr phys101
				mov esi, OFFSET phys101
                mov edi, OFFSET print4
                mov ecx, SIZEOF phys101
                cld
                rep movsb
        .elseif E9 == "E"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr it12
				mov esi, OFFSET it12
                mov edi, OFFSET print5
                mov ecx, SIZEOF it12
                cld
                rep movsb
        .elseif E9 == "F"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr it14
				mov esi, OFFSET it14
                mov edi, OFFSET print6
                mov ecx, SIZEOF it14
                cld
                rep movsb
        .elseif E9 == "G"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr ge11
				mov esi, OFFSET ge11
                mov edi, OFFSET print7
                mov ecx, SIZEOF ge11
                cld
                rep movsb
        .elseif E9 == "H"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr it13
				mov esi, OFFSET it13
                mov edi, OFFSET print8
                mov ecx, SIZEOF it13
                cld
                rep movsb
        .else
        jmp total3rd
        .endif
        jmp select31

total3rd:
        mov eax, A7
        invoke dwtoa, eax, addr E9
        jmp print3rd

print3rd:
		invoke ClearScreen
		invoke StdOut, addr UM
		invoke StdOut, addr CollegeDepartment
                invoke StdOut, addr Program
		invoke StdOut, addr Divider
		invoke StdOut, addr Divider
		invoke StdOut, addr Name_Declared
		invoke StdOut, addr Name_Input
		invoke StdOut, addr Sub_En
		
		;copy for Divider top
		invoke StdOut, addr thirdYear
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

;3RD YEAR SECOND SEM
thirdyear2:
        invoke ClearScreen
        invoke StdOut, addr UM
	invoke StdOut, addr CollegeDepartment
        invoke StdOut, addr Program
	invoke StdOut, addr Divider
	invoke StdOut, addr Divider
	invoke StdOut, addr Name_Declared
	invoke StdOut, addr Name_Input
        invoke StdOut, addr ID_Declared
        invoke StdOut, addr ID_Input

        invoke StdOut, addr thirdYear2
        invoke StdOut, addr s24
        invoke StdOut, addr it16
        invoke StdOut, addr uge2
        invoke StdOut, addr it15
        invoke StdOut, addr it18
        invoke StdOut, addr it19
        invoke StdOut, addr it20
        invoke StdOut, addr phys102
        invoke StdOut, addr ge7
        
        jmp select32

select32:
        invoke StdOut, addr selectCourse_prompt 
        invoke StdIn, addr E9, 10
        .if E9 == "I"
                add eax, 3
                sub eax, 1
                add A7, eax 
                invoke StdOut, addr it16
				mov esi, OFFSET it16
                mov edi, OFFSET print1
                mov ecx, SIZEOF it16
                cld
                rep movsb
        .elseif E9 == "J"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr uge2
				mov esi, OFFSET uge2
                mov edi, OFFSET print2
                mov ecx, SIZEOF uge2
                cld
                rep movsb
        .elseif E9 == "K"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr it15
				mov esi, OFFSET it15
                mov edi, OFFSET print3
                mov ecx, SIZEOF it15
                cld
                rep movsb
        .elseif E9 == "L"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr it18
				mov esi, OFFSET it18
                mov edi, OFFSET print4
                mov ecx, SIZEOF it18
                cld
                rep movsb
        .elseif E9 == "M"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr it19
				mov esi, OFFSET it19
                mov edi, OFFSET print5
                mov ecx, SIZEOF it19
                cld
                rep movsb
        .elseif E9 == "N"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr it20
				mov esi, OFFSET it20
                mov edi, OFFSET print6
                mov ecx, SIZEOF it20
                cld
                rep movsb
        .elseif E9 == "O"
                add eax, 4
                sub eax, 1
                add A7, eax
                invoke StdOut, addr phys102
				mov esi, OFFSET phys102
                mov edi, OFFSET print7
                mov ecx, SIZEOF phys102
                cld
                rep movsb
        .elseif E9 == "P"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr ge7
				mov esi, OFFSET ge7
                mov edi, OFFSET print8
                mov ecx, SIZEOF ge7
                cld
                rep movsb
        .else
        jmp total3rd2
        .endif
        jmp select32

total3rd2:
        mov eax, A7
        invoke dwtoa, eax, addr E9
        jmp print3rd2

print3rd2:
		invoke ClearScreen
		invoke StdOut, addr UM
		invoke StdOut, addr CollegeDepartment
                invoke StdOut, addr Program
		invoke StdOut, addr Divider
		invoke StdOut, addr Divider
		invoke StdOut, addr Name_Declared
		invoke StdOut, addr Name_Input
		invoke StdOut, addr Sub_En
		
		;copy for Divider top
		invoke StdOut, addr thirdYear2
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

;3RD YEAR SUMMER
thirdyear3:
        invoke ClearScreen
        invoke StdOut, addr UM
	invoke StdOut, addr CollegeDepartment
        invoke StdOut, addr Program
	invoke StdOut, addr Divider
	invoke StdOut, addr Divider
	invoke StdOut, addr Name_Declared
	invoke StdOut, addr Name_Input
        invoke StdOut, addr ID_Declared
        invoke StdOut, addr ID_Input

        invoke StdOut, addr thirdYear3
        invoke StdOut, addr s25
        invoke StdOut, addr it22
        invoke StdOut, addr it21
        
        jmp select33

select33:
        invoke StdOut, addr selectCourse_prompt 
        invoke StdIn, addr E9, 10
        .if E9 == "Q"
                add eax, 3
                sub eax, 1
                add A7, eax 
                invoke StdOut, addr it22
				mov esi, OFFSET it22
                mov edi, OFFSET print1
                mov ecx, SIZEOF it22
                cld
                rep movsb
        .elseif E9 == "R"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr it21
				mov esi, OFFSET it21
                mov edi, OFFSET print2
                mov ecx, SIZEOF it21
                cld
                rep movsb
        .else
        jmp total3rd3
        .endif
        jmp select33

total3rd3:
        mov eax, A7
        invoke dwtoa, eax, addr E9
        jmp print3rd3

print3rd3:
		invoke ClearScreen
		invoke StdOut, addr UM
		invoke StdOut, addr CollegeDepartment
                invoke StdOut, addr Program
		invoke StdOut, addr Divider
		invoke StdOut, addr Divider
		invoke StdOut, addr Name_Declared
		invoke StdOut, addr Name_Input
		invoke StdOut, addr Sub_En
		
		;copy for Divider top
		invoke StdOut, addr thirdyear3
		invoke StdOut, addr s22
		;copy for Divider bottom
		
		invoke StdOut, addr print1
		invoke StdOut, addr print2
		
		;total units
		invoke StdOut, addr totalUnits
		;for the if condition
		invoke StdOut, addr E9
		
		jmp exit

;4TH YEAR FIRST SEM
fourthyear1:
        invoke ClearScreen
        invoke StdOut, addr UM
	invoke StdOut, addr CollegeDepartment
        invoke StdOut, addr Program
	invoke StdOut, addr Divider
	invoke StdOut, addr Divider
	invoke StdOut, addr Name_Declared
	invoke StdOut, addr Name_Input
        invoke StdOut, addr ID_Declared
        invoke StdOut, addr ID_Input

        invoke StdOut, addr fourthYear1
        invoke StdOut, addr s26
        invoke StdOut, addr cce106
        invoke StdOut, addr uge2
        invoke StdOut, addr it24
        invoke StdOut, addr caed500c
        invoke StdOut, addr it17
        invoke StdOut, addr it23
        
        jmp select41

select41:
        invoke StdOut, addr selectCourse_prompt 
        invoke StdIn, addr E9, 10
        .if E9 == "A"
                add eax, 3
                sub eax, 1
                add A7, eax 
                invoke StdOut, addr cce106
				mov esi, OFFSET cce106
                mov edi, OFFSET print1
                mov ecx, SIZEOF cce106
                cld
                rep movsb
        .elseif E9 == "B"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr it24
				mov esi, OFFSET it24
                mov edi, OFFSET print2
                mov ecx, SIZEOF it24
                cld
                rep movsb
        .elseif E9 == "C"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr caed500c
				mov esi, OFFSET caed500c
                mov edi, OFFSET print3
                mov ecx, SIZEOF caed500c
                cld
                rep movsb
        .elseif E9 == "D"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr it17
				mov esi, OFFSET it17
                mov edi, OFFSET print4
                mov ecx, SIZEOF it17
                cld
                rep movsb
        .elseif E9 == "E"
                add eax, 3
                sub eax, 1
                add A7, eax
                invoke StdOut, addr it23
				mov esi, OFFSET it23
                mov edi, OFFSET print5
                mov ecx, SIZEOF it23
                cld
                rep movsb
        .else
        jmp total4th
        .endif
        jmp select41

total4th:
        mov eax, A7
        invoke dwtoa, eax, addr E9
        jmp print4th

print4th:
		invoke ClearScreen
		invoke StdOut, addr UM
		invoke StdOut, addr CollegeDepartment
                invoke StdOut, addr Program
		invoke StdOut, addr Divider
		invoke StdOut, addr Divider
		invoke StdOut, addr Name_Declared
		invoke StdOut, addr Name_Input
		invoke StdOut, addr Sub_En
		
		;copy for Divider top
		invoke StdOut, addr fourthyear1
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

;3RD YEAR SUMMER
fourthyear2:
        invoke ClearScreen
        invoke StdOut, addr UM
	invoke StdOut, addr CollegeDepartment
        invoke StdOut, addr Program
	invoke StdOut, addr Divider
	invoke StdOut, addr Divider
	invoke StdOut, addr Name_Declared
	invoke StdOut, addr Name_Input
        invoke StdOut, addr ID_Declared
        invoke StdOut, addr ID_Input

        invoke StdOut, addr fourthYear2
        invoke StdOut, addr s25
        invoke StdOut, addr it25
        
        jmp select42

select42:
        invoke StdOut, addr selectCourse_prompt 
        invoke StdIn, addr E9, 10
        .if E9 == "F"
                add eax, 9
                sub eax, 1
                add A7, eax 
                invoke StdOut, addr it25
				mov esi, OFFSET it25
                mov edi, OFFSET print1
                mov ecx, SIZEOF it25
                cld
                rep movsb
        .else
        jmp total4th2
        .endif
        jmp select42

total4th2:
        mov eax, A7
        invoke dwtoa, eax, addr E9
        jmp print4th2

print4th2:
		invoke ClearScreen
		invoke StdOut, addr UM
		invoke StdOut, addr CollegeDepartment
                invoke StdOut, addr Program
		invoke StdOut, addr Divider
		invoke StdOut, addr Divider
		invoke StdOut, addr Name_Declared
		invoke StdOut, addr Name_Input
		invoke StdOut, addr Sub_En
		
		;copy for Divider top
		invoke StdOut, addr fourthYear2
		invoke StdOut, addr s22
		;copy for Divider bottom
		
		invoke StdOut, addr print1
		invoke StdOut, addr print2
		
		;total units
		invoke StdOut, addr totalUnits
		;for the if condition
		invoke StdOut, addr E9
		
		jmp exit


exit:
        invoke ExitProcess, 0
end start
