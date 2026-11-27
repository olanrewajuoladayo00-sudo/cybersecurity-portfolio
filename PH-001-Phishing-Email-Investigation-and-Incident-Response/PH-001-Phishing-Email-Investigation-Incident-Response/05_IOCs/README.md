# PH-001 Indicators of Compromise (IOC) Register

## Purpose
This folder contains indicators identified during the simulated phishing investigation.

## Indicators Identified

| Indicator | Type | Observation |
|---|---|---|
| support@micros0ft.com | Email address | Suspicious sender address |
| micros0ft.com | Domain | Lookalike domain using a zero instead of the letter 'o' |
| https://micros0ft.com/verify | URL | Suspicious verification URL |
| 47.190.31.19 | IP address | Historical passive DNS association; not confirmed malicious |

## Important Notes
- Indicators must be validated before being used for blocking.
- The IP address is included for investigation context, not as a confirmed malicious IP.
- Historical threat-intelligence observations are not proof of compromise.
- No actual malicious attachment was recovered from the simulated email.

## Evidence
See the URL and domain investigation notes and endpoint investigation notes in this project.

---
**Case ID:** PH-001  
**Project:** Phishing Email Investigation and Incident Response
