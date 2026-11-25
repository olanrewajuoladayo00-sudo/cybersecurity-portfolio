# Windows Endpoint Monitoring and PowerShell Detection with Wazuh

## Project Overview

This SOC home lab project demonstrates Windows endpoint monitoring and custom PowerShell process-creation detection using Wazuh.

A Windows endpoint was enrolled as a Wazuh agent, Sysmon was configured to provide process-creation telemetry, and a custom Wazuh rule was created and tested with a benign PowerShell command. The resulting alert was reviewed in the Wazuh Dashboard.

## Lab Components

- **Kali Linux:** Hosts the Wazuh Manager and analysis components.
- **Windows 11 endpoint:** Monitored endpoint (`SOC-WIN11`).
- **Wazuh Agent:** Forwards endpoint telemetry to the manager.
- **Sysmon:** Provides detailed Windows process and system activity events.
- **Wazuh Dashboard:** Used to filter, view, and investigate alerts.

## Detection Implemented

- **Custom rule ID:** `100010`
- **Rule level:** `8`
- **Detection:** PowerShell process creation (Sysmon Event ID 1)
- **Matched field:** `win.eventdata.originalFileName`
- **MITRE ATT&CK:** `T1059.001` — PowerShell

The rule was tested using the benign command:

```powershell
powershell.exe -Command "Get-Date"
```

The resulting alert was verified in the Wazuh Dashboard.

## Key Learning Outcomes

- Wazuh SIEM operations and endpoint monitoring
- Sysmon telemetry collection
- XML-based custom detection rule development
- Controlled detection testing and alert validation
- Alert investigation and MITRE ATT&CK mapping
- Troubleshooting and documenting a SOC lab

## Results and Limitations

The lab successfully demonstrated endpoint enrollment, Sysmon event collection, custom PowerShell process-creation detection, and investigation of a Level 8 alert.

The rule detects the creation of a PowerShell process; it does not determine whether the command is malicious. A benign command can also trigger it. Further detection tuning and testing are proposed as future improvements.

## Full Project Report

See [`Wazuh_SOC_Project_2_Final_Report.pdf`](Wazuh_SOC_Project_2_Final_Report.pdf) for the full report, including the seven evidence screenshots, implementation details, results, limitations, skills demonstrated, and lessons learned.
