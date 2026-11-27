# Endpoint Investigation

## Case ID
PH-001

## Investigation Objective
To examine simulated endpoint activity for signs of suspicious process execution, script activity, and possible malware delivery.

## Tools and Evidence Sources
- VirusTotal
- Windows event logs (simulated)
- Sysmon (simulated)
- PowerShell logs (simulated)
- Endpoint process activity records (simulated)

## Findings

### 1. Historical File Intelligence
A related historical DOCX sample recorded 18 detections out of 66 vendors on VirusTotal.

SHA-256:
0a9d7369a1c4cb32172404abd4e1a6c5aa35a674b4bfdcca81dc909b0f047b65

A related historical LNK sample recorded 3 detections out of 60 vendors.

SHA-256:
caf31bc20fed33e937c7473504321199fbb2bc3193161eb8089e32ce8514da48

These were historical related samples, not confirmed attachments from the simulated phishing email.

### 2. Simulated Process Activity
Training records showed the following process chain:

WINWORD.EXE → powershell.exe → cmd.exe

The simulated PowerShell activity included a .NET WebClient DownloadString request to a suspicious URL.

A simulated command execution record showed:

cmd.exe /c whoami

### 3. Network Observations
Simulated proxy records showed an allowed HTTPS connection and recorded bytes sent and received.

However, no HTTP response status was available, and TLS inspection was disabled.

Therefore, the records do not confirm successful payload download or execution.

## Investigation Limitations
- No actual endpoint image was supplied.
- The process and proxy records were simulated training data.
- Historical VirusTotal samples were not confirmed as files received by the employee.
- No confirmed malware installation, credential theft, account takeover, or data exfiltration was established.

## Conclusion
The simulated endpoint evidence demonstrated suspicious process activity that would warrant further investigation by a SOC analyst. However, the available records are insufficient to confirm successful malware execution or endpoint compromise.

---
**Project:** PH-001 – Phishing Email Investigation and Incident Response
**Evidence Type:** Historical threat intelligence and simulated endpoint records
