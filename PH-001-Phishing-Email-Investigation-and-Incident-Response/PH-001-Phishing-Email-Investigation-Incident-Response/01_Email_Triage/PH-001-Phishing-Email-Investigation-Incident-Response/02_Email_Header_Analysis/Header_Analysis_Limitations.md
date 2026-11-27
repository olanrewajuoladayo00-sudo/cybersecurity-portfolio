# Email Header Analysis and Limitations

## Case ID
PH-001

## Investigation Objective
To examine the available email header information and identify potential signs of sender spoofing, authentication failures, and suspicious email routing.

## Tools Used
- MXToolbox
- DNS lookup tools

## Findings
The header analysis exercise used a synthetic email header for training purposes.

The sample included a reserved documentation IP address (192.0.2.25) and a fictional recipient domain.

No genuine Authentication-Results, Received-SPF, or DKIM-Signature values were available for verification.

DNS lookup attempts returned inconclusive results.

## Limitations
- The original email header was not available.
- SPF, DKIM, and DMARC authentication results could not be independently confirmed.
- The DNS lookup failures do not prove that the domain has no valid DNS records.

## Conclusion
The available evidence was insufficient to establish whether the sender passed or failed email authentication checks. Further investigation would require the original email and complete message headers.

---
**Project:** PH-001 – Phishing Email Investigation and Incident Response  
**Evidence Type:** Simulated training evidence
