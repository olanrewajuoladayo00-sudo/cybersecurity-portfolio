# PH-001: Phishing Email Investigation and Incident Response

## Project overview
A SOC Analyst Level 1 portfolio case study demonstrating a structured investigation of a simulated Microsoft 365-themed phishing email targeting a fictional Finance employee at GlobalTech Solutions.

The investigation covers email triage, lookalike-domain and URL analysis, DNS and registrar checks, historical threat-intelligence pivots, endpoint and identity-event interpretation, incident scoping, incident-response planning, and MITRE ATT&CK mapping.

> **Project context:** This is a hands-on cybersecurity lab investigation. The phishing scenario and selected endpoint, proxy, identity, and containment records are simulated training material. Original screenshots captured from VirusTotal, DNSChecker, MXToolbox, ICANN/RDAP, and CyberChef are included as investigation evidence. Historical related-file intelligence is not presented as a confirmed email attachment or endpoint artefact.

## Key findings
- The simulated email used the lookalike domain `micros0ft.com` and the URL `https://micros0ft.com/verify`.
- VirusTotal URL report screenshots displayed 14/91 and 14/90 detections in separate views.
- DNSChecker and MXToolbox showed failed or timed-out lookups; these results are inconclusive and do not prove that DNS records are absent.
- ICANN/RDAP showed GoDaddy.com, LLC as the registrar in the captured record.
- Historical DOCX and LNK samples appeared in VirusTotal related-file intelligence; neither is confirmed as the email attachment or a file from the simulated endpoint.
- Synthetic endpoint records illustrate suspicious Office-to-PowerShell and PowerShell-to-command-shell activity. They are training records, not live endpoint telemetry.
- The available evidence does not establish credential theft, malware installation, account takeover, or data exfiltration.

## Repository structure

| Folder | Contents |
|---|---|
| `01_Email_Triage/` | Simulated phishing email and triage notes |
| `02_Email_Header_Analysis/` | Header analysis and limitations, with original screenshots |
| `03_URL_Domain_Investigation/` | VirusTotal, DNSChecker, ICANN/RDAP and CyberChef screenshots |
| `04_Endpoint_Investigation/` | Endpoint investigation notes and historical related-file screenshots |
| `05_IOCs/` | IOC register |
| `06_Incident_Response/` | Incident response plan |
| `07_MITRE_ATT&CK/` | MITRE ATT&CK mapping |
| `08_Evidence_Index/` | Evidence register, original screenshot index and capture guide |
| `Evidence_Screenshots/` | Clearly identified synthetic training screenshots |
| `Final_Report/` | Final investigation report in Word, PDF and Markdown formats |

## Main deliverable
- `Final_Report/PH-001_Phishing_Email_Investigation_Report.docx`

## Tools and concepts
VirusTotal · DNSChecker · MXToolbox · ICANN/RDAP · CyberChef · email-header analysis · Windows Event Logs · PowerShell logging · Sysmon · proxy investigation · MITRE ATT&CK · incident response

## Ethical and evidential note
This project is a portfolio lab, not a real corporate incident. Findings are limited to the evidence described in the report. Synthetic training records, historical threat-intelligence artefacts, and original tool screenshots are distinguished throughout. Do not interpret historical relationships or simulated records as proof of a live compromise.
## Evidence and Investigation Navigation

The following sections provide access to the investigation process, supporting evidence, technical findings, and final report.

### 1. Email Triage
- [Simulated Phishing Email](01_Email_Triage/Simulated_Phishing_Email.md)
- [Email Triage Screenshots](01_Email_Triage/Screenshots/)

### 2. Email Header Analysis
- [Header Analysis and Limitations](02_Email_Header_Analysis/Header_Analysis_Limitations.md)
- [Email Header Screenshots](02_Email_Header_Analysis/Screenshots/)

### 3. URL and Domain Investigation
- [Investigation Notes](03_URL_Domain_Investigation/Investigation_Notes.md)
- [URL and Domain Investigation Screenshots](03_URL_Domain_Investigation/Screenshots/)

### 4. Endpoint Investigation
- [Endpoint Investigation Notes](04_Endpoint_Investigation/Endpoint_Investigation_Notes.md)
- [Endpoint Investigation Screenshots](04_Endpoint_Investigation/Screenshots/)

### 5. Indicators of Compromise (IOCs)
- [IOC Register – Excel](05_IOCs/PH-001_IOC_Register.xlsx)
- [IOC Overview](05_IOCs/README.md)

### 6. Incident Response
- [Incident Response Plan](06_Incident_Response/PH-001_Incident_Response_Plan.md)

### 7. MITRE ATT&CK Mapping
- [MITRE ATT&CK Mapping – CSV](07_MITRE_ATT%26CK/PH-001_MITRE_ATT%26CK_Mapping.csv)

### 8. Evidence Register
- [Evidence Register – CSV](08_Evidence_Index/PH-001_Evidence_Register.csv)
- [Screenshot Capture Guide](08_Evidence_Index/SCREENSHOT_CAPTURE_GUIDE.md)

### 9. Final Investigation Report
- [Read Final Report – PDF](Final_Report/PH-001_Investigation_Report.pdf)
- [Download Editable Report – Word](Final_Report/PH-001_Investigation_Report.docx)

---

**Recruiter Note:** This portfolio demonstrates a simulated SOC investigation using hands-on analysis, historical threat intelligence, original tool screenshots, and simulated training records. Evidence limitations are documented throughout the project.
