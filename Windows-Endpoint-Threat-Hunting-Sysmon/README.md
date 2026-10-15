# Windows Endpoint Threat Hunting with Sysmon

## Project Overview
This project demonstrates basic Windows endpoint monitoring and threat hunting using Microsoft Sysmon and Windows PowerShell.

The objective was to collect and review process-creation events, examine command-line arguments, and investigate parent-child process relationships to understand normal endpoint activity and identify events that may require further investigation.

## Tools and Technologies
- Microsoft Sysmon 15.22
- Windows PowerShell 5.1
- Windows Event Viewer
- Windows Sysmon Operational Event Log
- Windows endpoint environment

## Project Objectives
- Install and verify Sysmon.
- Confirm that Sysmon event logging is enabled.
- Retrieve and analyse Sysmon Event ID 1 (Process Create).
- Examine process paths, command lines, process IDs, parent processes, user context, and available hashes.
- Distinguish controlled benign activity from events requiring further investigation.

## Methodology
1. Verified the Windows architecture and Sysmon executable.
2. Installed Sysmon and confirmed that its service was running.
3. Verified the Microsoft-Windows-Sysmon/Operational event log.
4. Queried Event ID 1 process-creation records.
5. Generated controlled Notepad and PowerShell activity.
6. Investigated process command lines and parent-child relationships.
7. Reviewed recent process events to establish a basic activity baseline.

## Key Findings
- The Sysmon64 service was running, and the Sysmon Operational event log was enabled.
- A controlled Notepad test generated a process-creation event containing the expected test argument.
- A separate PowerShell process executed the harmless `Get-Date` command, and its process-creation details were recorded.
- Recent events included applications and Windows components such as Microsoft Edge, Zoom, `dllhost.exe`, and `conhost.exe`.
- The reviewed records did not establish malicious activity.

## Lessons Learned
- Sysmon provides valuable endpoint telemetry but does not independently determine whether an event is malicious.
- Event ID 1 helps analysts investigate process execution, command lines, executable paths, and parent-child relationships.
- Process context, timestamps, user information, and file reputation are important when investigating suspicious activity.
- Controlled benign tests can validate event collection without executing malware.
- A limited review cannot prove that an endpoint is completely free of threats.
- Evidence and screenshots should be organised and sanitised before public release.

## Limitations
This was an initial telemetry validation and baseline review focused primarily on process-creation events. It was not a full incident investigation. No malware execution or confirmed compromise was established.

## Future Improvements
- Develop additional Sysmon-based detection queries.
- Investigate suspicious PowerShell command-line patterns.
- Expand monitoring to network connections, persistence, registry changes, and file modifications.
- Review Sysmon configuration and Windows PowerShell logging.
- Develop repeatable threat-hunting queries and document investigation results.

## Conclusion
This project established a foundation for Windows endpoint threat hunting by validating Sysmon logging, retrieving process-creation events, and examining process execution context. It strengthened practical skills in defensive monitoring, event-log analysis, and evidence-based investigation.

**Disclaimer:** This was a controlled defensive training exercise. The findings do not prove malware execution, system compromise, data theft, or that the endpoint is completely free of threats.
