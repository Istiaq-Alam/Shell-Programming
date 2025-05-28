# Bash Commands Reference for Linux Terminal

This repository contains a comprehensive list of basic Linux bash commands for beginners and intermediate users to get familiar with terminal usage. Each command is provided with its syntax, example, output, and explanation for ease of learning.

---

## 📚 Table of Contents

### 🟢 Beginner Commands

1. [Create a File](#1-create-a-file)
2. [Create a Directory](#2-create-a-directory)
3. [Print Working Directory](#3-print-working-directory)
4. [Change Directory](#4-change-directory)
5. [Display File Contents](#5-display-file-contents)
6. [Display File Page-by-Page](#6-display-file-page-by-page)
7. [List All Files Including Hidden](#7-list-all-files-including-hidden)
8. [Long Listing Format](#8-long-listing-format)
9. [Human-Readable File Sizes](#9-human-readable-file-sizes)
10. [Mark Executables and Directories](#10-mark-executables-and-directories)
11. [Copy Files and Directories](#11-copy-files-and-directories)
12. [Remove Files and Directories](#12-remove-files-and-directories)
13. [Clear Terminal](#13-clear-terminal)
14. [View Manual Page for Command](#14-view-manual-page-for-command)

### 🟡 Intermediate Commands

15. [Display Directory Structure](#15-display-directory-structure)
16. [Find Files](#16-find-files)
17. [Kill a Process](#17-kill-a-process)
18. [Scroll File Content](#18-scroll-file-content)
19. [Who is Logged In](#19-who-is-logged-in)
20. [View System Resource Usage](#20-view-system-resource-usage)
21. [Change File Permissions](#21-change-file-permissions)
22. [Change File Owner](#22-change-file-owner)
23. [Show Disk Usage](#23-show-disk-usage)

---

## 🟢 Beginner Commands

## 1. Create a File

- **Command:** `touch filename`

```bash
touch Text.txt
```

- **Output:** No output if successful.
- **Explanation:** Creates a new empty file named `Text.txt`.

---

## 2. Create a Directory

- **Command:** `mkdir directory_name`

```bash
mkdir Lab1
```

- **Output:** No output if successful.
- **Explanation:** Creates a new directory named `Lab1`.

---

## 3. Print Working Directory

- **Command:** `pwd`

```bash
pwd
```

- **Output:**

```bash
/home/user/Lab1
```

- **Explanation:** Displays the current working directory.

---

## 4. Change Directory

- **Command:** `cd directory_name`

```bash
cd Lab1
```

- **Output:** No output if successful.
- **Explanation:** Changes the current directory to `Lab1`.

---

## 5. Display File Contents

- **Command:** `cat filename`

```bash
cat Text.txt
```

- **Output:**

```bash
Hello, this is a test file.
```

- **Explanation:** Prints the content of `Text.txt`.

---

## 6. Display File Page-by-Page

- **Command:** `more filename`

```bash
more Text.txt
```

- **Output:** Displays file content one screen at a time.
- **Explanation:** Views file content page by page.

---

## 7. List All Files Including Hidden

- **Command:** `ls -a`

```bash
ls -a
```

- **Output:**

```bash
.  ..  .bashrc  Text.txt  Lab1
```

- **Explanation:** Lists all files, including hidden files (those starting with a dot `.`).

---

## 8. Long Listing Format

- **Command:** `ls -l`

```bash
ls -l
```

- **Output:**

```bash
-rw-r--r-- 1 user user 20 Jan 30 14:00 Text.txt
```

- **Explanation:** Displays files with permissions, owners, size, and timestamp.

---

## 9. Human-Readable File Sizes

- **Command:** `ls -lh`

```bash
ls -l -h
```

- **Output:**

```bash
-rw-r--r-- 1 user user 1.1K Jan 30 14:00 Text.txt
```

- **Explanation:** Lists files in long format with human-readable file sizes.

---

## 10. Mark Executables and Directories

- **Command:** `ls -F`

```bash
ls -F
```

- **Output:**

```bash
Text.txt  Lab1/
```

- **Explanation:** Appends `/` to directories and `*` to executable files.

---

## 11. Copy Files and Directories

- **Command:** `cp source destination`

```bash
cp Text.txt Copied.txt
```

- **Output:** No output if successful.
- **Explanation:** Copies `Text.txt` to `Copied.txt`.

---

## 12. Remove Files and Directories

- **Command:** `rm filename` | `rmdir directory_name`

```bash
rm Text2.txt
rmdir FolderName
```

- **Output:** No output if successful.
- **Explanation:** Deletes a file or an empty directory.

---

## 13. Clear Terminal

- **Command:** `clear`

```bash
clear
```

- **Output:** Clears the terminal screen.
- **Explanation:** Clears the terminal screen.

---

## 14. View Manual Page for Command

- **Command:** `man command_name`

```bash
man touch
```

- **Output:** Displays the manual page of the `touch` command.
- **Explanation:** Opens the manual page for the `touch` command.

---

### 🟡 Intermediate Commands

## 15. Display Directory Structure

- **Command:** `tree directory_name`

```bash
tree Arduino
```

- **Output:**

```bash
Arduino
├── sketch.ino
└── lib
    └── library.h
```

- **Explanation:** Displays directory structure in a tree-like format.

---

## 16. Find Files

- **Command:** `locate -b filename`

```bash
locate -b art.jpg
```

- **Output:**

```bash
/home/user/Pictures/art.jpg
```

- **Explanation:** Finds file by name (uses an indexed database).

---

## 17. Kill a Process

- **Command:** `kill PID`

```bash
kill 2879
```

- **Output:** No output if successful.
- **Explanation:** Terminates the process with PID 2879.

---

## 18. Scroll File Content

- **Command:** `less filename`

```bash
less Text.txt
```

- **Output:** Opens file for viewing with navigation keys.
- **Explanation:** Opens file for scrolling; better for large files.

---

## 19. Who is Logged In

- **Command:** `who` and `whoami`

```bash
who
whoami
```

- **Output:**

```bash
user    tty7   2025-01-30 09:00 (:0)
user
```

- **Explanation:** `who` shows all logged-in users; `whoami` shows the current user.

---

## 20. View System Resource Usage

- **Command:** `top`

```bash
top
```

- **Output:** Displays a real-time list of processes and system usage.
- **Explanation:** Shows real-time system processes and resource usage.

---

## 21. Change File Permissions

- **Command:** `chmod permissions filename`

```bash
chmod 111 Text.txt
```

- **Output:** No output if successful.
- **Explanation:** Changes file permissions. `111` gives execute permission only.

---

## 22. Change File Owner

- **Command:** `chown user filename`

```bash
chown kali Text.txt
```

- **Output:** No output if successful.
- **Explanation:** Changes the owner of `Text.txt` to `kali`.

---

## 23. Show Disk Usage

**Command:** `df -h filename`

```bash
df -h file2
```

**Output:**

```bash
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1       100G   40G   60G  40% /
```

**Explanation:** Shows disk space usage in human-readable format.

---

## License

This project is provided for educational purposes under the MIT License.
