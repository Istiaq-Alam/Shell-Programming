# Bash Commands Reference for Linux Terminal

This repository contains a comprehensive list of basic Linux bash commands for beginners to get familiar with terminal usage. Each command is provided with its syntax, example, and explanation for ease of learning.

---

## 1. Create a File

**Command:** `touch filename`

```bash
touch Text.txt
```

**Explanation:** Creates a new empty file named `Text.txt`.

---

## 2. Create a Directory

**Command:** `mkdir directory_name`

```bash
mkdir Lab1
```

**Explanation:** Creates a new directory named `Lab1`.

---

## 3. Print Working Directory

**Command:** `pwd`

```bash
pwd
```

**Explanation:** Displays the current working directory.

---

## 4. Change Directory

**Command:** `cd directory_name`

```bash
cd Lab1
```

**Explanation:** Changes the current directory to `Lab1`.

---

## 5. Display File Contents

**Command:** `cat filename`

```bash
cat Text.txt
```

**Explanation:** Prints the content of `Text.txt`.

---

## 6. Display File Page-by-Page

**Command:** `more filename`

```bash
more Text.txt
```

**Explanation:** Views file content one screen at a time.

---

## 7. List All Files Including Hidden

**Command:** `ls -a`

```bash
ls -a
```

**Explanation:** Lists all files, including hidden files (those starting with a dot `.`).

---

## 8. Long Listing Format

**Command:** `ls -l`

```bash
ls -l
```

**Explanation:** Displays files with permissions, owners, size, and timestamp.

---

## 9. Human-Readable File Sizes

**Command:** `ls -lh`

```bash
ls -l -h
```

**Explanation:** Lists files in long format with human-readable file sizes (e.g., KB, MB).

---

## 10. Mark Executables and Directories

**Command:** `ls -F`

```bash
ls -F
```

**Explanation:** Appends `/` to directories and `*` to executable files.

---

## 11. Copy Files and Directories

**Command:** `cp source destination`

```bash
cp Text.txt Copied.txt
```

**Explanation:** Copies `Text.txt` to `Copied.txt`.

---

## 12. Remove Files and Directories

**Command:** `rm filename` (for files) | `rmdir directory_name` (for directories)

```bash
rm Text2.txt
rmdir FolderName
```

**Explanation:** Deletes a file or an empty directory.

---

## 13. Clear Terminal

**Command:** `clear`

```bash
clear
```

**Explanation:** Clears the terminal screen.

---

## 14. View Manual Page for Command

**Command:** `man command_name`

```bash
man touch
```

**Explanation:** Opens the manual page for the `touch` command.

---

## 15. Display Directory Structure

**Command:** `tree directory_name`

```bash
tree Arduino
```

**Explanation:** Displays directory structure in a tree-like format.

---

## 16. Find Files

**Command:** `locate -b filename`

```bash
locate -b art.jpg
```

**Explanation:** Finds file by name (uses an indexed database).

---

## 17. Kill a Process

**Command:** `kill PID`

```bash
kill 2879
```

**Explanation:** Terminates the process with PID 2879.

---

## 18. Scroll File Content

**Command:** `less filename`

```bash
less Text.txt
```

**Explanation:** Opens file for scrolling; better for large files.

---

## 19. Who is Logged In

**Command:** `who` and `whoami`

```bash
who
dhoami
```

**Explanation:** `who` shows all logged-in users; `whoami` shows the current user.

---

## 20. View System Resource Usage

**Command:** `top`

```bash
top
```

**Explanation:** Shows real-time system processes and resource usage.

---

## 21. Change File Permissions

**Command:** `chmod permissions filename`

```bash
chmod 111 Text.txt
```

**Explanation:** Changes file permissions. `111` gives execute permission only.

---

## 22. Change File Owner

**Command:** `chown user filename`

```bash
chown kali Text.txt
```

**Explanation:** Changes the owner of `Text.txt` to `kali`.

---

## 23. Show Disk Usage

**Command:** `df -h filename`

```bash
df -h file2
```

**Explanation:** Shows disk space usage in human-readable format.

---

## License

This project is provided for educational purposes under the MIT License.
