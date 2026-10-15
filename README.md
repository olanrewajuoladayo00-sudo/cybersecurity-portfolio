# Wireshark Network Traffic Analysis

**Project type:** Defensive cybersecurity / SOC analyst training  
**Environment:** Kali Linux, Wireshark  
**Case:** CB-002 — fictional training records  
**Capture:** `week2-traffic.pcap`

## Objective
Analyze a supplied generated packet capture to identify DNS lookups, TCP connection establishment, HTTP request/response activity, and TLS application data. Document observations carefully and recommend checks without claiming more than the evidence supports.

## Lab setup
- Operating system: Kali Linux
- Tool: Wireshark
- Display filter: `ip.addr == 10.20.0.24`
- Time display: UTC Date and Time of Day
- Client: CB-LT-07 (`10.20.0.24`)
- Office DNS resolver: `10.20.0.53`
- Approved portal: `portal.cedarbridge.example` (`192.0.2.80`)

The case materials identify the PCAP as a small generated teaching capture. The supplied TLS application-data record is synthetic and no TLS decryption keys are provided.

## Investigation workflow
1. Extract the training archive and locate `week2-traffic.pcap`.
2. Open the PCAP in Wireshark using **File → Open**. Do not start a live capture.
3. Set **View → Time Display Format → UTC Date and Time of Day**.
4. Apply `ip.addr == 10.20.0.24`.
5. Review frames 1–13 and inspect the HTTP request in frame 8, response in frame 9, and TLS application data in frame 13.
6. Save screenshots showing the filter and relevant packet details.
7. Record observations separately from interpretation and recommendations.

## Summary of observations
- Frames 1–2: CB-LT-07 queries DNS for the approved portal; the response is `192.0.2.80`.
- Frames 3–4: CB-LT-07 queries DNS for `billing-review.example`; the response is `198.51.100.80`.
- Frames 5–7: A TCP three-way handshake occurs between CB-LT-07 and `198.51.100.80` on port 80.
- Frame 8: CB-LT-07 sends an HTTP `GET /review` request with host `billing-review.example`.
- Frame 9: The server responds with HTTP `200 OK`; the supplied table describes the body as a training page.
- Frames 10–12: A TCP handshake occurs between CB-LT-07 and the approved portal IP `192.0.2.80` on port 443.
- Frame 13: Synthetic TLS application data is observed. Its application content is not readable from the supplied evidence.

See [`analysis/packet-analysis.md`](analysis/packet-analysis.md) and [`analysis/findings-and-recommendations.md`](analysis/findings-and-recommendations.md).

## Conclusion
The capture shows CB-LT-07 communicating with `billing-review.example`, a domain not present in the supplied approved-domain list, and receiving an HTTP `200 OK` response. This warrants verification, but absence from the list does not by itself prove maliciousness. The capture alone does not establish malware, data theft, user intent, or compromise.

## Evidence and data handling
- The case and records are fictional training materials.
- Screenshots in `screenshots/` document the Wireshark analysis.
- The original PCAP is not included. Add or redistribute it only if you have permission from the training provider.
- No live traffic was captured as part of this exercise.
