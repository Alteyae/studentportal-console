# studentportal-console

This project contains assembly code aimed at recreating the Student Portal of BSIT (Bachelor of Science in Information Technology) students in a console environment.

## How To Run

### Prerequisites

- MASM32 should be installed on your system.

### Steps

1. **Download the code**

   - Clone the repository to your local machine or download the ZIP file and extract it.

2. **Navigate to the directory**

   - Open a command prompt (cmd) and change the directory to the folder where you downloaded the code.

   ```
   cd path/to/your/folder
   ```

3. **Assemble and Link the code**

   - Run the following commands to assemble and link the code using MASM32:

   ```
   \masm32\bin\ml /c /Zd /coff bsit.asm
   \masm32\bin\Link /SUBSYSTEM:CONSOLE bsit.obj
   ```

4. **Run the program**

   - After successful assembly and linking, run the generated executable to execute the program.

5. **Interact with the program**
   - Follow the instructions provided by the program to interact with the Student Portal console application.
