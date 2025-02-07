# 🏥 Hospital Monitoring System - Group 30

## **👥 Group Members**
- **Belyse Kalisa Teta Yamwakate**
- **Brad Arnaud Shema Ruganintwali**
- **Colombe Marie Nyituriki Igihozo**
- **Peggy Dickine Dusenge**
- **Steven Kayitare**

---

## **📌 Project Description**
A local hospital recently upgraded its IT infrastructure for its digitization goals. This upgrade will:
- Improve **patient data storage**, such as heart rate data and archive logs.
- Securely back up data to a remote server for future access.

This project consists of **three shell scripts** to manage these tasks.

---

## **💻 Tasks & Scripts**
### **1️⃣ Task 1: Heart Rate Monitoring Script**
- **Script Name:** `heart_rate_monitor.sh`
- **Description:** Records heart rate data **every second**.
- **Features:**
  - Prompts for the **device name** (e.g., "Monitor_A", "Monitor_B").
  - Logs heart rate data into `heart_rate_log.txt`.
  - The log includes:
    - ✅ Timestamp  
    - ✅ Device name  
    - ✅ Simulated heart rate (randomized values).
  - Runs in the **background** and displays the **Process ID (PID)**.

**Example Log (`heart_rate_log.txt`):**

### **2️⃣ Task 2: Log Archival Script**
- **Script Name:** `archive_log.sh`
- **Description:** Archives `heart_rate_log.txt` by renaming it with a timestamp.
- **Example Archived Log Name:**
- **Expected Output:**  
- `archive_log.sh` renames the original log file using **YYYYMMDD_HHMMSS** format.

### **3️⃣ Task 3 (Bonus): Archival and Backup Script**
- **Script Name:** `backup_archives.sh`
- **Description:** Moves archived log files to a **designated directory** and backs them up to a **remote server**.
- **Steps:**
- Moves archived logs to `archived_logs_group30/`.
- Uses **SSH & SCP** to back up files to a remote **sandbox server**.

---

## **🚀 How to Run the Scripts**
### **Run the Heart Rate Monitoring Script**
```bash
bash heart_rate_monitor.sh

