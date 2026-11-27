# URL and Domain Investigation

## Case ID
PH-001

## Investigation Objective
To investigate the suspicious URL and domain associated with the simulated phishing email.

## Suspicious URL
https://micros0ft.com/verify

## Tools Used
- VirusTotal
- ICANN Lookup (RDAP)
- DNSChecker
- MXToolbox
- CyberChef
- URLScan

## Findings

### 1. VirusTotal
The URL received 14 detections from 91 security vendors in one analysis view. Another view showed 14 detections from 90 vendors.

The historical analysis was dated 24 September 2026.

### 2. IP Address Investigation
The IP address 47.190.31.19 showed 0 detections out of 92 vendors.

Historical passive DNS information associated the IP with www.micros0ft.com in 2021. This historical association alone does not establish that the IP is malicious.

### 3. DNS Investigation
DNSChecker and MXToolbox returned unsuccessful or inconclusive DNS lookup results.

These results do not prove that the domain has no valid DNS records.

### 4. Domain Registration
ICANN RDAP identified GoDaddy.com LLC as the registrar. DNSSEC was shown as unsigned.

### 5. URL Analysis
CyberChef URL decoding did not change the URL.

URLScan returned a 404 response for the requested resource. This does not establish that the suspicious URL itself returned a 404 response.

## Conclusion
The URL and domain investigation identified suspicious indicators requiring caution and further investigation. However, the available evidence does not independently establish successful redirection, credential theft, or malware delivery.

## Evidence Limitations
The findings include historical threat-intelligence results and inconclusive DNS checks. They should not be treated as proof of a live compromise.

---
**Project:** PH-001 – Phishing Email Investigation and Incident Response
