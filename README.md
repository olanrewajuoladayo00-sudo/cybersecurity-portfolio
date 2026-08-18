# 🛡️ My Cybersecurity Portfolio

Welcome to my cybersecurity portfolio. This repository documents my hands-on cybersecurity projects, SOC investigations, security monitoring, threat detection, and incident analysis.

## 👨‍💻 About Me

I am building practical skills in cybersecurity and Security Operations Center (SOC) operations through hands-on labs and security projects.

My focus areas include:

- Security Monitoring
- SIEM
- Threat Detection
- Log Analysis
- Incident Investigation
- Threat Intelligence
- Network Security

---

# 🔐 Cybersecurity Projects

## 1. Wazuh SIEM Lab

A hands-on SOC lab using Wazuh for centralized security monitoring, endpoint detection, log analysis, and alert investigation.

### Key Activities

- Deployed Wazuh Server on Kali Linux
- Configured Wazuh Manager, API, and Dashboard
- Connected an Ubuntu endpoint using the Wazuh Agent
- Simulated rootkit activity using Diamorphine
- Detected suspicious activity using Wazuh
- Integrated Suricata for network security monitoring
- Integrated VirusTotal for file reputation analysis
- Investigated security alerts and event details

📁 **[View Wazuh Project](SOC/Wazuh/)**

---

## 2. Splunk SOC Lab

A hands-on Splunk SOC investigation focused on detecting and investigating suspicious authentication activity.

### Key Activities

- Deployed and configured Splunk
- Generated failed authentication events
- Simulated brute-force activity
- Searched and analyzed authentication logs
- Created brute-force detection logic
- Configured a security alert
- Triggered and investigated the alert
- Built a basic SOC dashboard

📁 **[View Splunk Project](SOC/Splunk/)**

### Splunk Investigation Workflow

**Brute-Force Simulation → Log Collection → Search → Detection → Alert → Investigation → Dashboard**

---

# 🧰 Tools & Technologies

| Category | Tools |
|---|---|
| SIEM | Wazuh, Splunk |
| Network Security | Suricata |
| Threat Intelligence | VirusTotal |
| Operating Systems | Kali Linux, Ubuntu |
| Virtualization | Oracle VirtualBox |
| Security Analysis | Log Analysis, IOC Analysis, Alert Investigation |
| Version Control | Git, GitHub |

---

# 📂 Repository Structure

```text
cybersecurity-portfolio/
│
├── SOC/
│   │
│   ├── Wazuh/
│   │   ├── screenshots/
│   │   └── README.md
│   │
│   └── Splunk/
│       ├── screenshots/
│       └── README.md
│
└── README.md
