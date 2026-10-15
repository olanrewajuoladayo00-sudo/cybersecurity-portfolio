# Findings and Recommendations — CB-002

## Finding 1: DNS query for a domain not on the supplied approved list
**Evidence:** Frames 3–4 show CB-LT-07 (`10.20.0.24`) querying the office resolver (`10.20.0.53`) for `billing-review.example`. The response is `198.51.100.80`.

**Assessment:** The domain is not present in the supplied approved-domain list. That fact alone does not establish maliciousness.

**Recommended check:** Ask the supervisor or relevant administrator to verify whether the domain and destination are authorized, and compare against approved-domain, proxy, or web-access records if available.

## Finding 2: HTTP request and successful response
**Evidence:** Frames 5–7 show a TCP handshake to `198.51.100.80` on port 80. Frame 8 records `GET /review` with Host `billing-review.example`. Frame 9 records `HTTP 200 OK`; the supplied reference identifies the body as a training page.

**Assessment:** The request and successful HTTP response are observed in the capture. This does not prove that the content was malicious or that data was stolen.

**Recommended check:** If the domain is not authorized, request additional context from the responsible team and review any available web-proxy or endpoint records.

## Finding 3: Separate connection to the approved portal IP
**Evidence:** Frames 10–12 show a TCP handshake from CB-LT-07 to `192.0.2.80` on port 443. Frame 13 contains synthetic TLS application data.

**Assessment:** The capture records a connection to the approved portal IP. The TLS application content cannot be read from the supplied capture because no decryption keys are provided.

**Recommended check:** Do not make conclusions about the TLS content from this packet alone.

## Overall assessment
The communication with `billing-review.example` warrants verification because the domain is absent from the supplied approved-domain list. Based only on the provided packet evidence, there is not enough information to conclude that the activity is malicious or that a compromise occurred.

## Recommended actions for the supervisor
1. Preserve the original PCAP and document relevant frame numbers.
2. Verify whether `billing-review.example` and `198.51.100.80` are authorized for this environment.
3. Review available web-proxy, DNS, and endpoint records for additional context.
4. Correlate with other relevant evidence before determining severity or attribution.
5. Follow the organization's escalation process. The analyst's authority in this exercise is limited to inspecting evidence, documenting findings, and recommending checks; do not block addresses or disable accounts.

## Evidence limitations
- The PCAP is a generated teaching capture.
- The TLS application-data record is synthetic and not decryptable with the supplied materials.
- The supplied context does not include endpoint process-tree data, a user interview, VPN mapping, a DNS reputation verdict, or complete server logs.
