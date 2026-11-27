# PH-001 Incident Response Plan

## Case Information
- Case ID: PH-001
- Incident Type: Suspected Phishing
- Target Department: Finance
- Scenario Date: 26 November 2026
- Environment: Simulated training environment

## 1. Preparation
- Maintain email security controls and endpoint monitoring.
- Educate employees on phishing indicators.
- Ensure incident reporting procedures are available.
- Maintain access to SIEM and threat intelligence tools.

## 2. Identification
- Review the suspicious sender address and email subject.
- Examine the suspicious URL using threat intelligence tools.
- Review available email header information.
- Investigate suspicious endpoint process activity.
- Review identity sign-in records for unusual activity.

## 3. Containment
The simulated response recorded isolation of FINANCE-PC-01 at 08:45 UTC on 26 November 2026.

Recommended additional actions:
- Quarantine the phishing email from affected mailboxes.
- Block the suspicious URL and domain after validation.
- Temporarily disable or restrict affected accounts if compromise is suspected.
- Preserve relevant logs and investigation evidence.

## 4. Eradication
- Examine the endpoint for malicious files and persistence mechanisms.
- Remove confirmed malicious files and unauthorized changes.
- Reset credentials if credential exposure is established.
- Review endpoint security alerts.

Eradication was not independently verified in the available training records.

## 5. Recovery
- Restore affected systems from trusted sources where necessary.
- Reconnect isolated endpoints only after security checks.
- Monitor endpoint and account activity.
- Confirm that security controls are functioning correctly.

Recovery validation remains pending in this case study.

## 6. Lessons Learned
- Verify suspicious email senders and links before interacting with them.
- Preserve original email headers for reliable authentication analysis.
- Correlate endpoint, network and identity events during investigations.
- Distinguish suspicious activity from confirmed compromise.
- Document evidence limitations clearly.

## Incident Outcome
The case demonstrated a suspected phishing scenario with simulated suspicious endpoint activity. The available evidence did not establish successful credential theft, malware installation, account takeover or data exfiltration.

---
**Project:** PH-001 – Phishing Email Investigation and Incident Response  
**Evidence:** Simulated training records and historical threat intelligence
