# Packet Analysis — CB-002

## Search conditions
- Wireshark display filter: `ip.addr == 10.20.0.24`
- Time display: UTC Date and Time of Day
- Client: CB-LT-07 (`10.20.0.24`)
- DNS resolver: `10.20.0.53`

## Frame-by-frame observations

| Frame | Time (UTC) | Source | Destination | Protocol | Observation |
|---:|---|---|---|---|---|
| 1 | 08:14:00 | 10.20.0.24 | 10.20.0.53 | DNS | Query for `portal.cedarbridge.example` |
| 2 | 08:14:01 | 10.20.0.53 | 10.20.0.24 | DNS | DNS response `192.0.2.80` |
| 3 | 08:15:00 | 10.20.0.24 | 10.20.0.53 | DNS | Query for `billing-review.example` |
| 4 | 08:15:01 | 10.20.0.53 | 10.20.0.24 | DNS | DNS response `198.51.100.80` |
| 5 | 08:15:02 | 10.20.0.24 | 198.51.100.80 | TCP | Client sends SYN to destination port 80 |
| 6 | 08:15:03 | 198.51.100.80 | 10.20.0.24 | TCP | Server sends SYN-ACK |
| 7 | 08:15:04 | 10.20.0.24 | 198.51.100.80 | TCP | Client sends ACK; handshake completes |
| 8 | 08:15:05 | 10.20.0.24 | 198.51.100.80 | HTTP | `GET /review`, Host `billing-review.example` |
| 9 | 08:15:06 | 198.51.100.80 | 10.20.0.24 | HTTP | `200 OK`; reference describes a training-page body |
| 10 | 08:16:00 | 10.20.0.24 | 192.0.2.80 | TCP | Client sends SYN to destination port 443 |
| 11 | 08:16:01 | 192.0.2.80 | 10.20.0.24 | TCP | Server sends SYN-ACK |
| 12 | 08:16:02 | 10.20.0.24 | 192.0.2.80 | TCP | Client sends ACK; handshake completes |
| 13 | 08:16:03 | 10.20.0.24 | 192.0.2.80 | TLS | Synthetic application-data record; content not readable |

## Simple interpretation
1. The laptop asks DNS for the approved portal's address.
2. It later asks DNS for `billing-review.example`, which is not listed in the supplied approved-domain list.
3. It establishes a TCP connection to `198.51.100.80` on port 80.
4. It requests `/review` over HTTP and receives `200 OK`.
5. It also establishes a separate TCP connection to `192.0.2.80` on port 443 and sends synthetic TLS application data.

## Limitations
This is a generated teaching capture. No TLS keys are supplied, so the TLS application data cannot be decrypted. A successful HTTP response does not establish that a site is safe or malicious. The capture alone does not prove compromise, malware execution, or data theft.
