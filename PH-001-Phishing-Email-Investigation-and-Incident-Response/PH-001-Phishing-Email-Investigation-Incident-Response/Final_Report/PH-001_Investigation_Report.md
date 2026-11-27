# PH-001: Phishing Email Investigation and Incident Response

## 1. Executive Summary

This project documents a simulated phishing investigation targeting a Finance employee at GlobalTech Solutions.

The investigation examined a suspicious Microsoft 365 account suspension email, its sender domain, URL reputation, available email header information, historical file intelligence and simulated endpoint activity.

The findings identified suspicious indicators and simulated endpoint activity requiring further investigation. However, the available evidence did not establish successful credential theft, malware installation, account takeover or data exfiltration.

## 2. Incident Overview

| Field | Details |
|---|---|
| Case ID | PH-001 |
| Incident Type | Suspected Phishing |
| Target Department | Finance |
| Scenario Date | 26 November 2026 |
| Sender | support@micros0ft.com |
| Subject | Urgent: Microsoft 365 Account Suspension |
| Suspicious URL | https://micros0ft.com/verify |
| Environment | Simulated training environment |

## 3. Investigation Objectives

- Identify phishing indicators in the suspicious email.
- Examine available email header information.
- Investigate the suspicious URL and domain.
- Review historical threat intelligence.
- Analyse simulated endpoint activity.
- Document indicators of compromise.
- Map relevant techniques to MITRE ATT&CK.
- Recommend incident response actions.

## 4. Tools Used

- VirusTotal
- MXToolbox
- DNSChecker
- ICANN RDAP
- CyberChef
- URLScan
- MITRE ATT&CK

## 5. Key Findings

### Email Investigation
The sender address used a lookalike domain containing a zero instead of the letter 'o'.

### Header Analysis
The available header exercise used synthetic information. Genuine SPF, DKIM and DMARC authentication results could not be confirmed.

### URL and Domain Investigation
VirusTotal showed 14 detections in one historical URL analysis view. DNS checks were inconclusive. Historical passive DNS information associated IP address 47.190.31.19 with the suspicious domain in 2021, but this does not establish that the IP is malicious.

### Endpoint Investigation
Historical related DOCX and LNK samples showed security detections. Simulated endpoint records also showed a WINWORD.EXE → PowerShell → CMD process chain.

These records did not confirm successful malware installation or payload execution.

### Identity Investigation
Simulated identity records showed unfamiliar failed sign-in attempts but no unfamiliar successful sign-in.

## 6. Incident Response

A simulated containment record documented isolation of FINANCE-PC-01 at 08:45 UTC on 26 November 2026.

Recommended actions included email quarantine, endpoint investigation, account protection, evidence preservation and security monitoring.

Eradication and recovery validation remained pending.

## 7. MITRE ATT&CK Mapping

| Technique ID | Technique | Relevance |
|---|---|---|
| T1566.002 | Spearphishing Link | Simulated phishing email |
| T1204.002 | Malicious File | Potential file interaction |
| T1059.001 | PowerShell | Simulated PowerShell activity |
| T1059.003 | Windows Command Shell | Simulated command execution |
| T1033 | System Owner/User Discovery | Simulated whoami command |

## 8. Recommendations

1. Implement effective email filtering and anti-phishing controls.
2. Educate employees on suspicious links and sender addresses.
3. Enforce multi-factor authentication.
4. Monitor suspicious PowerShell and command-shell execution.
5. Correlate email, endpoint, network and identity logs.
6. Preserve original email headers and forensic evidence.
7. Validate threat intelligence indicators before blocking.

## 9. Limitations

This project uses a simulated phishing scenario, synthetic training records and historical threat intelligence. No genuine corporate email, endpoint image or production security logs were supplied.

The findings must not be interpreted as confirmation of a real security breach.

## 10. Skills Demonstrated

- Phishing email triage
- Email header analysis
- URL and domain investigation
- Threat intelligence analysis
- Endpoint investigation
- IOC documentation
- Incident response
- MITRE ATT&CK mapping
- Security investigation reporting

## 11. Conclusion

This investigation demonstrates a structured SOC Analyst approach to examining a suspected phishing incident, correlating available evidence, identifying limitations and documenting appropriate response recommendations.

The project highlights the importance of evidence-based analysis and avoiding conclusions that cannot be supported by available data.

---

**Project:** PH-001 – Phishing Email Investigation and Incident Response  
**Role:** SOC Analyst – Training Case Study
