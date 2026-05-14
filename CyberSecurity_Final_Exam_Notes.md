# CYBERSECURITY FINAL YEAR EXAM — COMPREHENSIVE STUDY NOTES

---

# TOPIC 1: INTRODUCTION TO SECURITY OPERATIONS

## 1.1 Governance, Risk and Compliance (GRC)

### What is GRC?
GRC is an integrated approach to aligning IT infrastructure and operations with business goals while managing risk and meeting compliance requirements.

- **Governance**: The framework of rules, responsibilities, and practices by which senior management directs and controls the organization. Board of directors and executive management set strategic direction, ensure objectives are achieved, and manage resources (from your Chapter 1 notes).
- **Risk**: The possibility of an event occurring that will have an impact on the achievement of objectives. Measured in terms of likelihood and consequence.
- **Compliance**: Adherence to laws, regulations, standards, and internal policies (e.g., GDPR, ISO 27001, PCI-DSS).

### Why GRC Matters in Security Operations
- Reduces financial losses from breaches
- Establishes legal accountability and due care
- Reduces uncertainty of risk
- Optimizes security resource allocation
- Provides assurance for critical decisions
- Builds partner and customer trust
- Enables business recovery planning

### GRC Frameworks Used in SOCs
| Framework | Purpose |
|-----------|---------|
| ISO/IEC 27001 | ISMS standard for managing information security |
| NIST CSF | Cybersecurity framework: Identify, Protect, Detect, Respond, Recover |
| COBIT | IT governance and management framework |
| PCI-DSS | Payment card industry data security standard |
| SOC 2 | Service organization controls for data security |

### The Risk Management Cycle (from Chapter 2)
1. **Establish context** — define scope, internal and external environment
2. **Risk Assessment** — identify, analyze, evaluate risks
3. **Risk Treatment** — avoid, transfer, mitigate, or accept
4. **Risk Communication** — share findings with stakeholders
5. **Monitor and Review** — ongoing process, not a one-time event

**Key formula (Quantitative Risk):**
> ALE = Asset Value × Exposure Factor × Annualized Rate of Occurrence (ARO)

---

## 1.2 Overview of Cybersecurity Operations

Cybersecurity operations encompasses all activities an organization undertakes to protect its information systems, detect threats, and respond to incidents.

### Core Objectives (CIA Triad)
- **Confidentiality**: Prevent unauthorized disclosure of information
- **Integrity**: Ensure information is accurate and unaltered
- **Availability**: Ensure systems and data are accessible when needed

### Expanded Model — Parkerian Hexad
Beyond CIA, modern operations also protect:
- Possession/Control
- Authenticity
- Utility

### Security Operations Functions
| Function | Description |
|----------|-------------|
| Prevention | Firewalls, access control, encryption, patching |
| Detection | IDS/IPS, SIEM, log analysis, anomaly detection |
| Response | Incident response teams, forensics, containment |
| Recovery | Backup restoration, BCP/DR, business continuity |

### Operational Security Levels
- **Strategic level**: Long-term planning, policy, governance (Board, CISO)
- **Tactical level**: Implementation of security controls, projects (Security Managers)
- **Operational level**: Day-to-day monitoring, response (SOC Analysts)

---

## 1.3 SOC Structure and Roles

### What is a Security Operations Center (SOC)?
A SOC is a centralized unit that deals with security issues on an organizational and technical level. It is staffed with security professionals who monitor, analyze, and respond to cybersecurity incidents 24/7.

### SOC Models
1. **In-house/Internal SOC**: Organization owns and operates it. High cost but maximum control.
2. **Managed SOC (MSSP)**: Outsourced to a Managed Security Service Provider.
3. **Hybrid SOC**: Combination of in-house and outsourced.
4. **Virtual SOC**: No dedicated facility; staff work remotely.
5. **Co-Managed SOC**: Internal team works alongside an MSSP.

### SOC Tier Structure

#### Tier 1 — Alert Analyst / Triage Analyst
- First line of defense
- Monitors security alerts in SIEM
- Performs initial triage and classification
- Escalates to Tier 2 if needed
- Works with predefined playbooks

#### Tier 2 — Incident Responder
- Investigates escalated incidents
- Performs deeper analysis
- Determines scope and impact
- Coordinates containment activities
- Conducts malware analysis

#### Tier 3 — Threat Hunter / Senior Analyst
- Proactively searches for hidden threats
- Performs advanced forensics
- Develops detection rules and use cases
- Threat intelligence integration

#### SOC Manager
- Oversees all SOC operations
- Manages staff, processes, and tools
- Reports to CISO
- Ensures SLAs are met

#### CISO (Chief Information Security Officer)
- Develops overall security strategy
- Performs risk assessments
- Reports to CEO (should NOT report to CIO due to conflict of interest)
- Monitors resource utilization

### Key SOC Metrics
- **MTTD** (Mean Time to Detect): Average time to detect an incident
- **MTTR** (Mean Time to Respond): Average time to respond/remediate
- **MTTC** (Mean Time to Contain): Average time to contain a threat
- **False Positive Rate**: Percentage of alerts that are not real threats
- **Alert Volume**: Total alerts generated per day/week

### SOC Tools Ecosystem
| Category | Examples |
|----------|---------|
| SIEM | Splunk, IBM QRadar, Microsoft Sentinel |
| EDR | CrowdStrike Falcon, SentinelOne, Carbon Black |
| SOAR | Palo Alto XSOAR, Splunk SOAR, IBM Resilient |
| Threat Intel | MISP, ThreatConnect, Recorded Future |
| Vulnerability Mgmt | Tenable Nessus, Qualys, Rapid7 |
| Network Analysis | Wireshark, Zeek (Bro), Suricata |

---

## 1.4 Threat Landscape

### Malware
Malware (malicious software) is any software designed to disrupt, damage, or gain unauthorized access to systems.

#### Types of Malware

**Virus**
- Attaches itself to legitimate programs/files
- Spreads when the infected file is executed
- Requires human interaction to propagate
- Example: ILOVEYOU, Melissa

**Worm**
- Self-replicating malware
- Spreads across networks WITHOUT human interaction
- Exploits vulnerabilities to propagate
- Example: WannaCry, Conficker, Stuxnet (worm component)

**Trojan Horse**
- Disguises itself as legitimate software
- Does not self-replicate
- Creates backdoors, steals data
- Example: Zeus (banking trojan), Emotet

**Ransomware**
- Encrypts victim's files
- Demands payment (usually cryptocurrency) for decryption key
- Modern variants use double extortion (encrypt + threaten to leak)
- Examples: WannaCry, NotPetya, REvil, LockBit, Conti

**Ransomware Attack Chain:**
1. Initial Access (phishing, exploit, RDP brute force)
2. Establish persistence
3. Lateral movement
4. Privilege escalation
5. Exfiltrate data (double extortion)
6. Deploy ransomware payload
7. Demand ransom

**Spyware**
- Secretly monitors user activity
- Captures keystrokes, screenshots, credentials
- Example: Pegasus (commercial spyware)

**Rootkit**
- Hides malware presence from OS and security tools
- Operates at kernel level (ring 0)
- Very difficult to detect and remove
- Example: ZeroAccess, Necurs

**Bootkit**
- Infects the Master Boot Record (MBR) or Volume Boot Record
- Loads before the OS, evades detection
- Example: TDL4, Rovnix

**Fileless Malware**
- Resides in memory, not on disk
- Uses legitimate tools (PowerShell, WMI, LOLBins)
- Difficult to detect with traditional AV
- Example: Poweliks, Kovter

**Adware**
- Displays unwanted advertisements
- Often bundled with free software
- May redirect browser searches

**Cryptominer**
- Hijacks CPU/GPU to mine cryptocurrency
- Degrades system performance
- Example: Coinhive, XMRig (legitimate mining tool abused)

**Keylogger**
- Records keystrokes
- Captures credentials, credit card numbers
- Can be hardware or software-based

**Botnet**
- Network of infected "zombie" machines controlled by a C2 server
- Used for DDoS attacks, spam campaigns, credential stuffing
- Example: Mirai (IoT botnet), TrickBot

### Ransomware (Detailed)

**WannaCry (2017)**
- Exploited EternalBlue (MS17-010) — NSA exploit leaked by Shadow Brokers
- Spread as a worm across SMBv1
- Affected 200,000+ computers in 150 countries
- NHS UK severely impacted
- Patch existed (MS17-010) but many systems unpatched

**NotPetya (2017)**
- Disguised as ransomware, actually a wiper
- Destroyed MBR — no real decryption
- Spread via EternalBlue + Mimikatz credential theft
- $10 billion in damages globally
- Attributed to Russian GRU (Sandworm)

**Ransomware-as-a-Service (RaaS)**
- Criminal groups offer ransomware as a service
- Affiliates pay a percentage of ransom to developers
- Examples: LockBit, BlackCat/ALPHV, REvil/Sodinokibi

### Advanced Persistent Threats (APTs)

**Definition**: APTs are sophisticated, long-term cyberattacks typically conducted by nation-states or well-funded criminal groups. They are characterized by:
- **Advanced**: Use of custom tools, zero-days, sophisticated techniques
- **Persistent**: Maintain long-term presence in victim networks (months/years)
- **Threat**: Motivated, skilled, and resourceful adversaries

**APT Characteristics:**
- Highly targeted (specific organizations/sectors)
- Long dwell time (average 200+ days before detection)
- Multi-stage attack lifecycle
- Live off the land (LOLBins) to avoid detection
- Custom malware and tools
- Exfiltrate data slowly to avoid detection

**APT Kill Chain (Lockheed Martin Cyber Kill Chain):**
1. **Reconnaissance** — gather intelligence on target
2. **Weaponization** — create malware/exploit
3. **Delivery** — phishing, watering hole, supply chain
4. **Exploitation** — exploit vulnerability
5. **Installation** — install backdoor/RAT
6. **C2 (Command & Control)** — establish communication channel
7. **Actions on Objectives** — exfiltrate data, deploy ransomware

**MITRE ATT&CK Framework** — Catalogs TTPs (Tactics, Techniques, Procedures) used by APTs
- 14 Tactics: Reconnaissance, Resource Development, Initial Access, Execution, Persistence, Privilege Escalation, Defense Evasion, Credential Access, Discovery, Lateral Movement, Collection, C2, Exfiltration, Impact
- Used for threat modeling, detection engineering, adversary emulation

**Notable APT Groups:**
| Group | Alias | Nation | Targets |
|-------|-------|--------|---------|
| APT28 | Fancy Bear | Russia | Government, Military |
| APT29 | Cozy Bear | Russia | Government, Think Tanks |
| APT41 | Winnti | China | Technology, Healthcare |
| Lazarus Group | Hidden Cobra | North Korea | Finance, Crypto |
| APT34 | OilRig | Iran | Energy, Government |

---

# TOPIC 2: SECURITY ARCHITECTURE FUNDAMENTALS

## 2.1 Defence-in-Depth

### Concept
Defence-in-depth (DiD) is a layered security strategy where multiple defensive mechanisms are stacked so that if one layer fails, others continue to protect. Originally a military concept, it was adopted by the NSA for information security.

**Core Principle**: No single control is foolproof. Multiple layers of overlapping controls reduce the probability of a successful attack.

### Layers of Defence-in-Depth

```
[Physical Security]
    [Network Perimeter] — Firewalls, DMZ
        [Network Segmentation] — VLANs, internal firewalls
            [Endpoint Security] — AV, EDR, host-based firewall
                [Application Security] — WAF, secure coding
                    [Data Security] — Encryption, DLP, access control
                        [Identity & Access] — MFA, PAM, RBAC
                            [Monitoring & Response] — SIEM, SOC
```

### Layer Details

**Layer 1 — Physical Security**
- Access control systems (keycards, biometrics)
- CCTV surveillance
- Security guards
- Mantraps / airlocked entry
- Cable locks, server cage locks
- Environmental controls (temperature, humidity, fire suppression)

**Layer 2 — Perimeter Security**
- Firewalls (stateful, next-generation)
- Demilitarized Zone (DMZ): buffer zone between internet and internal network
- Intrusion Detection/Prevention Systems (IDS/IPS)
- DDoS protection
- Email filtering / spam gateway

**Layer 3 — Network Segmentation**
- VLANs to isolate network segments
- Internal firewalls between segments
- Micro-segmentation in data centers
- Air gaps for critical systems (e.g., ICS/SCADA)

**Layer 4 — Endpoint Security**
- Antivirus / Anti-malware
- EDR (Endpoint Detection and Response)
- Host-based firewall
- Full disk encryption (BitLocker, FileVault)
- Application whitelisting
- Patch management

**Layer 5 — Application Security**
- Web Application Firewall (WAF)
- Secure coding practices (OWASP Top 10)
- Input validation and sanitization
- Secure SDLC
- Code reviews and penetration testing

**Layer 6 — Data Security**
- Encryption at rest (AES-256) and in transit (TLS 1.2/1.3)
- Data Loss Prevention (DLP)
- Database activity monitoring
- Data classification (Public, Internal, Confidential, Secret)
- Backup and recovery

**Layer 7 — Identity and Access Management (IAM)**
- Multi-Factor Authentication (MFA)
- Privileged Access Management (PAM)
- Role-Based Access Control (RBAC)
- Principle of Least Privilege
- Single Sign-On (SSO)
- Identity governance

**Layer 8 — Monitoring and Detection**
- SIEM (Security Information and Event Management)
- SOC operations
- Threat hunting
- Vulnerability scanning
- Penetration testing

---

## 2.2 Network Security Basics

### Firewall Types

**Packet Filtering Firewall (Stateless)**
- Inspects individual packets against static rules
- Checks source/destination IP, port, protocol
- Does NOT track connection state
- Fast but easily bypassed (IP spoofing)

**Stateful Inspection Firewall**
- Tracks the state of active connections (connection table)
- Allows return traffic automatically
- More secure than packet filtering
- Standard for enterprise networks

**Application Layer Firewall (Proxy Firewall)**
- Operates at Layer 7 (Application)
- Deep packet inspection
- Can detect and block application-specific attacks
- Acts as intermediary (proxy)

**Next-Generation Firewall (NGFW)**
- All stateful capabilities plus:
- Application identification (App-ID)
- User identification (User-ID)
- Intrusion Prevention System (IPS)
- SSL/TLS inspection
- Threat intelligence integration
- Examples: Palo Alto Networks, Fortinet, Check Point

**Web Application Firewall (WAF)**
- Protects web applications specifically
- Blocks OWASP Top 10: SQLi, XSS, CSRF, etc.
- Can operate in detection or prevention mode
- Examples: AWS WAF, Cloudflare WAF, ModSecurity

### Network Security Protocols

| Protocol | Port | Purpose | Notes |
|----------|------|---------|-------|
| HTTPS | 443 | Encrypted web traffic | TLS 1.2/1.3 |
| SSH | 22 | Secure remote access | Replaces Telnet |
| TLS | N/A | Transport encryption | v1.3 current standard |
| DNSSEC | 53 | DNS security extensions | Prevents DNS spoofing |
| IPSec | N/A | Network layer encryption | Used in VPNs |
| 802.1X | N/A | Network access control | Port-based authentication |

### Network Segmentation and DMZ

**DMZ Architecture:**
```
Internet → [Border Firewall] → [DMZ: Web Servers, Mail, DNS] → [Internal Firewall] → [Internal Network]
```

**Benefits of Segmentation:**
- Limits lateral movement of attackers
- Contains breach impact
- Easier to monitor traffic between segments
- Compliance requirements (PCI-DSS mandates segmentation)

### VPN (Virtual Private Network)
- Creates encrypted tunnel over public network
- **Site-to-Site VPN**: Connects entire networks (branch offices)
- **Remote Access VPN**: Individual users connect to corporate network
- **Protocols**: OpenVPN, IPSec/IKEv2, WireGuard, SSL VPN
- **Split tunneling**: Only some traffic goes through VPN — security risk

### IDS vs IPS

| Feature | IDS | IPS |
|---------|-----|-----|
| Full name | Intrusion Detection System | Intrusion Prevention System |
| Action | Detect and alert | Detect and block |
| Placement | Out-of-band (mirror/span port) | Inline (traffic passes through) |
| Risk | No performance impact | Can block legitimate traffic |
| Detection | Signature + anomaly-based | Signature + anomaly-based |

**Detection Methods:**
- **Signature-based**: Matches known attack patterns — fast, low false positives, misses zero-days
- **Anomaly-based**: Detects deviation from baseline — catches unknown attacks, higher false positives
- **Heuristic**: Rule-based behavior analysis

---

## 2.3 Zero Trust Architecture

### Traditional vs Zero Trust

**Traditional (Castle-and-Moat):**
- Trust everything inside the network perimeter
- "Trust but verify"
- Once inside, attacker can move freely
- VPN gives full network access
- Fails against insider threats and lateral movement

**Zero Trust:**
- "Never trust, always verify"
- No implicit trust based on network location
- Every access request authenticated and authorized
- Continuous verification of identity and device health
- Microsegmentation limits lateral movement

### Zero Trust Principles (NIST SP 800-207)

1. **All resources are accessed securely** regardless of location
2. **Least privilege access** — only minimum necessary permissions
3. **Verify explicitly** — authenticate and authorize every request
4. **Assume breach** — act as if attacker is already inside
5. **All communication is encrypted** — even inside the network
6. **Collect telemetry and analytics** — for continuous monitoring

### Zero Trust Components

**Identity Pillar**
- Multi-Factor Authentication (MFA) — mandatory
- Identity Provider (IdP): Azure AD, Okta, Ping Identity
- Conditional Access Policies
- Privileged Identity Management (PIM)

**Device Pillar**
- Device registration and health verification
- Mobile Device Management (MDM)
- Endpoint Detection and Response (EDR)
- Compliance checks before access granted

**Network Pillar**
- Microsegmentation
- Software-Defined Perimeter (SDP)
- Encrypted communications
- DNS filtering and monitoring

**Application Pillar**
- Application-level access controls
- Zero Trust Network Access (ZTNA) replaces VPN
- Application proxy (Azure App Proxy, Zscaler)
- API security

**Data Pillar**
- Data classification
- Rights management
- DLP policies
- Encryption of sensitive data

### Zero Trust vs VPN
| Feature | VPN | ZTNA (Zero Trust) |
|---------|-----|-------------------|
| Access | Full network access | Application-specific access |
| Trust | Network-based | Identity + context-based |
| Lateral movement | Easy | Blocked |
| Performance | Backhauling | Direct-to-app |
| Visibility | Limited | Full session visibility |

---

# TOPIC 3: SECURITY MONITORING & LOGGING

## 3.1 Log Management

### What is a Log?
A log is a time-stamped record of events occurring in systems, applications, networks, and security devices. Logs are the foundation of all security monitoring and forensics.

### Why Logging Matters
- Detect security incidents
- Investigate after an incident (forensic evidence)
- Meet compliance requirements (GDPR, PCI-DSS, HIPAA)
- Audit user activities
- Troubleshoot system issues

### Types of Logs

**System Logs**
- OS events: logins, logouts, reboots, service starts/stops
- Windows Event Logs: Security (4624, 4625, 4648, 4720, 4732), System, Application
- Linux: /var/log/auth.log, /var/log/syslog, /var/log/messages

**Critical Windows Event IDs:**
| Event ID | Meaning |
|----------|---------|
| 4624 | Successful logon |
| 4625 | Failed logon |
| 4648 | Logon with explicit credentials |
| 4720 | User account created |
| 4732 | User added to privileged group |
| 4768 | Kerberos TGT requested |
| 4776 | NTLM authentication attempted |
| 7045 | New service installed |

**Network Logs**
- Firewall logs: allowed/denied connections
- DNS query logs: domain lookups (critical for detecting C2)
- DHCP logs: IP assignment records
- NetFlow/IPFIX: traffic flow summaries (not full packet capture)
- Proxy logs: web browsing activity

**Application Logs**
- Web server logs: Apache access.log, IIS logs
- Database logs: queries, failed authentications
- Authentication logs: VPN, SSO, AD

**Security Device Logs**
- IDS/IPS alerts
- AV/EDR detections
- DLP incidents
- WAF blocks

**Cloud Logs**
- AWS CloudTrail (API calls)
- AWS CloudWatch (performance + security)
- Azure Activity Log, Azure Monitor
- GCP Cloud Audit Logs

### Log Management Lifecycle

1. **Collection**: Agent-based (Syslog, Winlogbeat, NXLog) or agentless
2. **Transmission**: Syslog (UDP 514), Syslog-TLS, HTTPS, Kafka
3. **Storage**: Centralized log repository (SIEM, Elasticsearch, S3)
4. **Retention**: Typically 90 days hot, 1 year cold (compliance varies)
5. **Analysis**: Correlation, searching, alerting
6. **Archival**: Long-term storage for compliance (7 years for some regulations)
7. **Disposal**: Secure deletion when retention period expires

### Log Formats
- **Syslog** (RFC 5424): Standard UNIX log format — priority, timestamp, hostname, message
- **CEF** (Common Event Format): ArcSight standard
- **LEEF** (Log Event Extended Format): IBM QRadar standard
- **JSON**: Increasingly used in modern systems
- **Windows XML Event Log**: EVTX format

### Log Management Best Practices
- Centralize all logs to a single platform
- Use NTP (Network Time Protocol) for synchronized timestamps — critical for forensics
- Protect log integrity (write-once storage, digital signatures)
- Define log retention policy aligned with compliance requirements
- Monitor logging infrastructure itself (log source health)
- Implement log rotation to manage storage

---

## 3.2 Event Correlation

### What is Correlation?
Correlation is the process of analyzing multiple log events from different sources to identify patterns that indicate a security incident. A single event may be meaningless; correlation reveals the full attack story.

### Types of Correlation

**Rule-Based Correlation**
- Predefined rules: "IF event A AND event B WITHIN 5 minutes THEN alert"
- Example: Failed login (4625) × 5 within 60 seconds → Brute force alert
- Fast and deterministic
- Must be manually maintained and updated

**Statistical/Threshold-Based Correlation**
- Alerts when metric exceeds baseline
- Example: More than 1000 DNS queries per minute from single host
- Requires baseline establishment

**Pattern Matching**
- Matches sequence of events against known attack patterns
- Example: Port scan → Exploit attempt → Backdoor installation

**Behavioral Analytics (UEBA)**
- Establishes baseline of normal behavior for users and entities
- Alerts on deviation from baseline
- Example: User suddenly downloads 10GB of data at 3am

### Correlation Examples

**Brute Force Detection:**
```
Trigger: 5+ failed logins (Event 4625) from same source IP in 5 minutes
```

**Lateral Movement Detection:**
```
Trigger: Successful login (4624) from workstation to workstation (not server)
         using admin credentials
```

**Malware Beacon Detection:**
```
Trigger: Regular outbound connection to unknown external IP every 60 seconds
         (periodic C2 communication pattern)
```

**Privilege Escalation:**
```
Trigger: New service installed (7045) + new admin account created (4720)
         within same session
```

---

## 3.3 Introduction to SIEM

### What is SIEM?
Security Information and Event Management (SIEM) combines:
- **SIM** (Security Information Management): Log collection, storage, compliance reporting
- **SEM** (Security Event Management): Real-time event correlation and alerting

SIEM is the central hub of a SOC — it aggregates logs from all sources, correlates events, generates alerts, and provides investigation capabilities.

### SIEM Core Functions
1. **Data Collection**: Aggregate logs from all sources
2. **Normalization**: Convert all log formats into a common schema
3. **Correlation**: Apply rules to detect attack patterns
4. **Alerting**: Generate incidents for analyst investigation
5. **Dashboards**: Visual representation of security posture
6. **Reporting**: Compliance reports, executive summaries
7. **Forensics/Search**: Historical log search for investigations

### SIEM Data Flow
```
Log Sources → [Collectors/Agents] → [Parser/Normalizer] → [Indexer/Storage] 
                                                                ↓
                                    [Correlation Engine] → [Alert Queue]
                                                                ↓
                                                        [Analyst Console]
```

### Popular SIEM Products
| Product | Vendor | Notes |
|---------|--------|-------|
| Splunk | Splunk Inc. | Market leader, SPL query language |
| Microsoft Sentinel | Microsoft | Cloud-native, Azure integration |
| IBM QRadar | IBM | Enterprise-grade, LEEF format |
| ArcSight | Micro Focus | Large enterprises, CEF format |
| LogRhythm | LogRhythm | Built-in UEBA, SOAR |
| Elastic SIEM | Elastic | Open-source base, ECS schema |
| Chronicle | Google | Cloud-scale, petabyte storage |

---

# TOPIC 4: SIEM FUNDAMENTALS

## 4.1 SIEM Architecture and Components

### Deployment Models

**On-Premises SIEM**
- All components hosted in organization's data center
- Maximum control over data
- High upfront cost, requires dedicated team
- Example: Splunk Enterprise, IBM QRadar

**Cloud SIEM (SaaS)**
- Fully managed by vendor
- Faster deployment, lower maintenance
- Data sovereignty concerns
- Example: Microsoft Sentinel, Chronicle

**Hybrid SIEM**
- Mix of on-premises and cloud
- On-prem for sensitive data, cloud for scalability

### SIEM Architecture Components

**Data Collection Layer**
- **Agents/Forwarders**: Lightweight software on endpoints (Splunk Universal Forwarder, Winlogbeat, Filebeat)
- **Agentless collection**: Syslog, API pulls, WMI, JDBC
- **Log Aggregators**: Intermediate collectors that buffer and forward (Logstash, Fluentd)

**Processing Layer**
- **Parser**: Extracts fields from raw log text (regex-based)
- **Normalizer**: Maps fields to common schema (e.g., src_ip, dst_ip, user, action)
- **Enrichment**: Adds context — GeoIP, threat intel feed lookup, CMDB data, user risk score

**Storage Layer**
- Hot storage: Recent data, fast SSD storage (90 days typical)
- Warm storage: Medium-term (6-12 months), slower disks
- Cold/Archive storage: Long-term (1-7 years), object storage (S3, Azure Blob)
- Indexing enables fast search

**Correlation/Analytics Layer**
- Real-time rule engine (event-based triggers)
- Scheduled searches (every N minutes)
- Machine learning models (UEBA)
- Threat intelligence matching

**Presentation Layer**
- Analyst workbench / investigation interface
- Dashboards and visualizations
- Case management (ticketing integration)
- Reporting engine

---

## 4.2 Use Cases and Alert Generation

### SIEM Use Cases
A "use case" is a detection scenario — a rule or set of rules that detects a specific threat.

**Top SIEM Use Cases:**

1. **Brute Force / Password Spraying**
   - Multiple failed logins from one IP (brute force)
   - Few failed logins across many accounts (password spray)

2. **Impossible Travel**
   - User login from New York, then London 30 minutes later
   - Impossible given travel time → compromised credentials

3. **Privilege Escalation**
   - User added to admin group
   - Service account with new admin privileges
   - sudo commands on Linux

4. **Data Exfiltration**
   - Large outbound data transfer
   - Upload to cloud storage (Dropbox, Google Drive) in bulk
   - Unusual outbound DNS (DNS tunneling)

5. **Malware Infection**
   - Known malicious hash/IP/domain detected
   - Process spawning unusual child processes
   - Unusual persistence mechanisms (registry run keys, scheduled tasks)

6. **Lateral Movement**
   - Pass-the-Hash or Pass-the-Ticket attacks
   - Admin share access (\\server\C$) 
   - PsExec / WMI remote execution
   - SMB connections between workstations

7. **C2 Communication**
   - DNS beaconing (regular queries to same domain)
   - HTTP/HTTPS to newly registered domain
   - Long-running connections to suspicious IPs
   - Communication outside business hours

8. **Ransomware Activity**
   - Mass file modification/renaming
   - Shadow copy deletion (vssadmin delete shadows)
   - Encryption pattern in file extensions

### Alert Severity Levels
| Level | Color | Description | Response Time |
|-------|-------|-------------|---------------|
| Critical | Red | Active breach, data loss | Immediate (< 15 min) |
| High | Orange | High probability threat | < 1 hour |
| Medium | Yellow | Possible threat, needs investigation | < 4 hours |
| Low | Blue | Informational, possible indicator | < 24 hours |
| Informational | White | No action needed, for audit | N/A |

---

## 4.3 False Positives and Tuning

### Definitions
- **True Positive (TP)**: Alert fires, and it IS a real threat
- **False Positive (FP)**: Alert fires, but it is NOT a real threat (benign activity)
- **True Negative (TN)**: No alert, and no real threat exists
- **False Negative (FN)**: No alert, but a real threat EXISTS (missed detection)

**The most dangerous outcome is False Negative** — a missed attack.

### Why False Positives Are Costly
- Analyst fatigue ("alert fatigue")
- Real threats buried under noise
- SOC resources wasted on non-events
- Can lead to analysts dismissing real alerts

### Tuning Strategies

**Whitelisting / Exclusions**
- Exclude known-good IPs, users, or processes from triggering rules
- Example: Exclude vulnerability scanner IP from triggering port scan alert
- Risk: Attacker can abuse whitelisted accounts

**Threshold Adjustment**
- Raise trigger thresholds to reduce noise
- Example: Change failed login alert from 3 to 10 failures
- Risk: Real attacks below threshold missed

**Time-Based Suppression**
- Suppress alerts during known maintenance windows
- Example: Do not alert on mass file modifications during backup jobs

**Context Enrichment**
- Add business context to reduce FPs
- Example: If user is in "IT Admin" group, suppress certain privilege alerts

**Risk Scoring (UEBA)**
- Combine multiple low-confidence signals into a risk score
- Alert only when score exceeds threshold
- More nuanced than binary alert/no alert

### Tuning Process
1. Identify top sources of false positives
2. Analyze root cause (bad rule logic, missing context)
3. Apply appropriate adjustment (whitelist, threshold, enrichment)
4. Test the modified rule
5. Document the change
6. Review periodically — business changes affect baselines

---

# TOPIC 5: ENDPOINT SECURITY (EDR/XDR)

## 5.1 Endpoint Threats

An **endpoint** is any device that connects to the network: laptops, desktops, servers, mobile devices, IoT devices.

### Why Endpoints Are Primary Targets
- Users make mistakes (click phishing links, download malware)
- Endpoints run complex software with vulnerabilities
- Endpoints hold credentials, data, and provide network access
- Harder to centrally control than network infrastructure

### Common Endpoint Attack Vectors
1. **Phishing emails** — malicious attachments or links
2. **Drive-by downloads** — visiting compromised websites
3. **USB/removable media** — physical delivery of malware
4. **Software vulnerabilities** — unpatched OS or applications
5. **Credential theft** — password reuse, keyloggers
6. **Living-off-the-Land (LOLBins)** — abuse of legitimate Windows tools

### Living-off-the-Land Binaries (LOLBins)
Attackers use built-in Windows tools to avoid detection:
| Tool | Malicious Use |
|------|--------------|
| PowerShell | Download and execute malware |
| WMI | Persistence, lateral movement |
| certutil.exe | Download files, decode base64 |
| mshta.exe | Execute malicious HTA files |
| regsvr32.exe | Execute malicious DLLs |
| bitsadmin.exe | Download malware |
| rundll32.exe | Execute malicious DLLs |

---

## 5.2 Endpoint Detection and Response (EDR)

### What is EDR?
EDR is a security solution that continuously monitors endpoint activity, records telemetry, detects threats, and provides response capabilities.

**EDR vs Traditional AV:**
| Feature | Traditional AV | EDR |
|---------|--------------|-----|
| Detection method | Signature only | Signature + behavior + ML |
| Visibility | File scanning | Full process, network, registry activity |
| Response | Quarantine file | Kill process, isolate host, remediate |
| Forensics | None | Full activity timeline |
| Zero-day detection | Poor | Good (behavioral) |

### EDR Core Capabilities

**Telemetry Collection**
- Process creation and termination (with command line)
- File creation, modification, deletion
- Network connections (src/dst IP, port)
- Registry modifications
- DNS queries
- DLL loading
- Memory events

**Threat Detection**
- Known malware signatures
- Behavioral rules (process injection, persistence mechanisms)
- Machine learning models (anomaly detection)
- IOC matching (hashes, IPs, domains)
- MITRE ATT&CK mapping

**Response Actions**
- **Isolate host**: Cut off network access while keeping management connection
- **Kill process**: Terminate malicious process
- **Quarantine file**: Move malicious file to quarantine
- **Memory dump**: Capture process memory for analysis
- **Forensic collection**: Gather evidence from endpoint
- **Remote shell**: Connect to endpoint for live investigation

### Extended Detection and Response (XDR)

XDR extends EDR across multiple security layers:
- Endpoint (EDR)
- Network (NDR — Network Detection and Response)
- Email security
- Cloud workloads
- Identity (Active Directory)

**Benefits of XDR:**
- Unified view across all attack surfaces
- Automatic correlation of signals from different layers
- Faster threat detection and reduced MTTR
- Single console instead of multiple tools

**Examples:** CrowdStrike Falcon XDR, SentinelOne Singularity XDR, Microsoft Defender XDR, Palo Alto Cortex XDR

---

## 5.3 Behavioral Analysis

### Process Injection Techniques (Behavioral Indicators)
Attackers inject code into legitimate processes to evade detection:
- **DLL Injection**: Force a process to load a malicious DLL
- **Process Hollowing**: Replace legitimate process memory with malicious code
- **Thread Hijacking**: Inject code into a thread of a legitimate process
- **Reflective DLL Loading**: Load DLL from memory without touching disk
- **APC Injection**: Queue malicious code to run in thread context

**Detection**: Unusual memory regions, process spawning suspicious children, unexpected network connections from normally-offline processes (e.g., Word.exe making external connections)

### Suspicious Parent-Child Process Relationships
| Parent | Child | Suspicious Why |
|--------|-------|----------------|
| Word.exe | PowerShell.exe | Macro executing PowerShell |
| Word.exe | cmd.exe | Macro executing commands |
| Explorer.exe | PowerShell.exe | Could indicate malware |
| svchost.exe | cmd.exe | Service executing shell |
| browser | wscript.exe | Drive-by download |

### UEBA (User and Entity Behavior Analytics)
- Establishes baseline of normal behavior for each user/entity
- Uses machine learning (clustering, anomaly detection)
- Calculates risk score based on deviations
- Examples of anomalies:
  - Login at unusual time/location
  - Access to resources never used before
  - Bulk data downloads
  - Lateral movement patterns

---

# TOPIC 6: INCIDENT RESPONSE

## 6.1 Incident Response Lifecycle

The NIST SP 800-61 incident response lifecycle has four phases:

### Phase 1: Preparation
- Develop incident response plan (IRP)
- Assemble incident response team (IRT)
- Define roles and responsibilities
- Establish communication channels (out-of-band)
- Deploy and configure security tools (SIEM, EDR, SOAR)
- Create playbooks for common incident types
- Conduct tabletop exercises and simulations
- Establish relationships with law enforcement, legal counsel

### Phase 2: Detection and Analysis
- Monitor alerts from SIEM, EDR, IDS, threat feeds
- Initial triage: Is this a real incident?
- Determine scope: What systems are affected?
- Classify incident severity
- Preserve evidence (don't contaminate)
- Document all findings with timestamps
- Notify appropriate stakeholders

**Indicators of Compromise (IOCs) to look for:**
- Unusual outbound connections
- Processes with no legitimate parent
- New scheduled tasks, services, registry run keys
- Unusual account activity
- File hashes matching known malware
- Unusual DNS queries

### Phase 3: Containment, Eradication, and Recovery

**Containment — Short-Term:**
- Isolate infected systems (network isolation, VLAN change)
- Block malicious IPs/domains at firewall
- Disable compromised accounts
- Preserve forensic evidence before any changes

**Containment — Long-Term:**
- Rebuild compromised systems from clean images
- Deploy temporary workarounds
- Strengthen monitoring

**Eradication:**
- Remove malware, backdoors, and unauthorized accounts
- Patch exploited vulnerabilities
- Close attack vectors used for initial access
- Verify no persistence mechanisms remain

**Recovery:**
- Restore systems from clean backups
- Validate systems are clean before reconnecting
- Monitor closely for re-infection
- Return systems to normal operation
- Communicate recovery status to stakeholders

### Phase 4: Post-Incident Activity
- Write detailed incident report
- Conduct lessons-learned meeting (within 2 weeks)
- Update runbooks/playbooks based on findings
- Implement improvements to prevent recurrence
- Calculate metrics (MTTD, MTTR)
- Share threat intelligence with community (ISACs)

---

## 6.2 Incident Classification and Handling

### Incident Categories
| Category | Examples |
|----------|---------|
| Malware | Virus, ransomware, worm infection |
| Unauthorized Access | Account compromise, privilege escalation |
| Denial of Service | DDoS, resource exhaustion |
| Data Breach | Exfiltration of sensitive data |
| Insider Threat | Malicious employee, data theft |
| Phishing | Credential harvesting, BEC |
| Web Attack | SQLi, XSS, directory traversal |
| Physical | Unauthorized data center access, stolen device |

### Severity Classification
**P1 — Critical**: Active breach, data loss, critical system down
**P2 — High**: Significant threat, likely to escalate if not contained
**P3 — Medium**: Moderate threat, limited impact
**P4 — Low**: Minor event, minimal business impact
**P5 — Informational**: No impact, logged for awareness

### Incident Response Roles
- **Incident Commander (IC)**: Overall decision authority
- **Technical Lead**: Directs technical analysis and containment
- **Threat Intel Analyst**: Provides context on attacker TTPs
- **Communications Lead**: Manages internal/external communications
- **Legal/HR**: Involved for insider threats and regulatory notifications
- **Executive Sponsor**: Provides organizational authority and resources

### Communication During Incidents
- Use out-of-band channels (phone, Signal) if email/systems compromised
- Need-to-know principle — limit disclosure
- Regulatory notification requirements:
  - GDPR: 72 hours to notify supervisory authority
  - HIPAA: 60 days for breach notification
  - PCI-DSS: Notify card brands immediately

---

## 6.3 Basic Digital Forensics

### Principles of Digital Forensics
1. **Do no harm** — minimize changes to evidence
2. **Document everything** — chain of custody, timestamps
3. **Preserve evidence** — exact copies (forensic images)
4. **Maintain chain of custody** — track all who access evidence
5. **Work from copies** — never analyze original media

### Order of Volatility (RFC 3227)
Collect evidence from most volatile to least volatile:
1. CPU registers and cache (most volatile — lost on power off)
2. RAM / memory contents
3. Network connections and routing tables
4. Running processes
5. Disk data (less volatile)
6. Backup media / optical media
7. Printed documents (least volatile)

### Memory Forensics
RAM contains: running processes, encryption keys, credentials (plain text), network connections, malware that never touches disk

**Tools:** Volatility Framework, Rekall

**Key Volatility commands:**
- `imageinfo` — identify OS profile
- `pslist` / `pstree` — list running processes
- `netscan` — network connections in memory
- `malfind` — detect injected code
- `dumpfiles` — extract files from memory
- `hashdump` — extract password hashes

### Disk Forensics
- Create forensic image with write blocker (FTK Imager, dd, dcfldd)
- Calculate MD5/SHA-256 hash of original and copy to verify integrity
- Analyze image with Autopsy, FTK, Encase

**Key analysis areas:**
- File system metadata (creation, modification, access times — MAC times)
- Deleted file recovery
- Browser history, cookies, cached files
- Registry hive analysis (Windows)
- Prefetch files (evidence of program execution)
- Event logs
- Volume Shadow Copies (VSS) — previous versions of files

### Network Forensics
- Full Packet Capture (PCAP): Wireshark, tcpdump
- NetFlow analysis: Traffic patterns without full packet content
- DNS analysis: Query logs, exfiltration via DNS
- Email header analysis: Trace email origin

### Forensic Tools
| Tool | Purpose |
|------|---------|
| Autopsy | Open-source disk forensics |
| FTK (Forensic Toolkit) | Commercial disk forensics |
| Volatility | Memory forensics |
| Wireshark | Network packet analysis |
| FTK Imager | Create forensic images |
| Sleuth Kit | CLI disk forensics |
| Plaso/log2timeline | Timeline generation |

---

# TOPIC 7: THREAT INTELLIGENCE & HUNTING

## 7.1 Types of Threat Intelligence

### Intelligence Pyramid (Levels)

**Strategic Intelligence**
- High-level, long-term view
- For executives and board
- Example: "Nation-state actors increasingly targeting energy sector"
- Informs security strategy and risk decisions

**Operational Intelligence**
- Specific campaigns and attacker activities
- For security managers
- Example: "APT28 campaign targeting European government emails"
- Informs defensive posture and priorities

**Tactical Intelligence**
- TTPs (Tactics, Techniques, Procedures)
- For SOC analysts and security architects
- Example: "Attackers using PowerShell download cradles for stage-2 payload delivery"
- Informs detection rule creation

**Technical Intelligence**
- Specific IOCs (Indicators of Compromise)
- For SOC analysts and automated systems
- Example: IP addresses, domains, file hashes, YARA rules
- Direct input into SIEM, firewalls, EDR

### Intelligence Sources

**Open Source Intelligence (OSINT)**
- Publicly available information
- VirusTotal, Shodan, WHOIS, Censys, AlienVault OTX
- Social media, dark web forums
- Government advisories (CISA, NCSC, CERT)
- CVE databases (NVD, MITRE)

**Commercial Threat Intelligence**
- Paid threat intel feeds and platforms
- Examples: Recorded Future, Mandiant Advantage, CrowdStrike Falcon X
- Higher quality, actionable, vetted

**Information Sharing Communities**
- ISACs (Information Sharing and Analysis Centers) — sector-specific
- ISAO (Information Sharing and Analysis Organizations)
- FS-ISAC (Financial Services)
- H-ISAC (Health)
- E-ISAC (Energy)

**Sharing Formats:**
- **STIX** (Structured Threat Information Expression): JSON-based format for threat intelligence
- **TAXII** (Trusted Automated eXchange of Indicator Information): Protocol for sharing STIX data
- **OpenIOC**: XML-based IOC format
- **MISP**: Open-source threat intelligence platform

---

## 7.2 Indicators of Compromise (IOCs)

### What are IOCs?
IOCs are forensic artifacts or observable evidence that suggest a system has been compromised or is being targeted.

### Categories of IOCs

**Atomic IOCs** (simplest)
- IP addresses (C2 servers, known malicious IPs)
- Domain names (malicious domains, DGA domains)
- Email addresses (phishing senders)
- URL patterns

**Computed IOCs**
- File hashes: MD5, SHA-1, SHA-256 of malicious files
- Fuzzy hashes: SSDEEP, TLSH (match similar files)
- Imphash: Hash of PE import table

**Behavioral IOCs**
- Mutex names (malware creates unique mutexes)
- Registry keys (persistence mechanisms)
- Scheduled task names
- User agent strings
- YARA rules (match file content patterns)
- Process names and command lines

### Pyramid of Pain (David Bianco)
Describes how difficult it is for attackers to change different types of IOCs:

```
[TTPs]              ← HARDEST for attacker to change (must change behavior)
[Tools]             ← Hard (must develop new tools)
[Network/Host Artifacts] ← Annoying (must reconfigure)
[Domain Names]      ← Simple (register new domain)
[IP Addresses]      ← Easy (new server)
[Hash Values]       ← Trivial (change one byte, new hash)
```
**Key insight**: Focusing detection on TTPs is far more effective than IOC matching alone.

### IOC Lifecycle
1. **Collection**: Gather IOCs from threat intel feeds, incident analysis, hunting
2. **Validation**: Confirm IOCs are accurate and not stale
3. **Enrichment**: Add context (which threat actor, campaign, severity)
4. **Deployment**: Push to SIEM, EDR, firewall, DNS filter
5. **Monitoring**: Alert when IOC matched
6. **Expiration**: Remove stale IOCs (old IPs often reassigned)

---

## 7.3 Threat Hunting Basics

### What is Threat Hunting?
Threat hunting is the proactive, human-driven search for threats that have evaded automated detection. It assumes compromise and seeks hidden adversaries.

**Key distinction**: SIEM/EDR detect known threats reactively; threat hunting proactively seeks unknown/hidden threats.

### Threat Hunting Methodology

**1. Hypothesis-Driven Hunting**
- Start with a hypothesis based on threat intelligence
- Example: "Based on recent intel, attackers are using PowerShell for lateral movement"
- Search logs for evidence supporting or refuting hypothesis

**2. IOC-Based Hunting**
- Start with known IOCs from threat intel
- Search for matches across environment
- Pivot from match to broader investigation

**3. Analytics-Driven Hunting**
- Use statistical analysis or ML to identify anomalies
- No prior hypothesis — let data lead
- Example: Identify processes with unusual network behavior

### Hunting Process
1. **Create hypothesis** (from intel, TTPs, or analytics)
2. **Identify data sources** (which logs needed)
3. **Hunt** (query data, look for evidence)
4. **Investigate findings** (determine if malicious or benign)
5. **Document and report** findings
6. **Improve detection** — create SIEM rules based on findings
7. **Repeat**

### Common Hunting Techniques

**Process tree analysis**: Look for unusual parent-child process relationships
**Network traffic analysis**: Find beaconing, DNS tunneling, unusual protocols
**Authentication analysis**: Find pass-the-hash, unusual logins, impossible travel
**Persistence mechanism hunting**: Search all startup locations (registry, scheduled tasks, services, startup folder)
**Long-tail analysis**: Focus on rare events — malware activity often appears in the long tail of frequency distributions

### Threat Hunting Tools
| Tool | Use |
|------|-----|
| Splunk | Log analysis and hunting queries |
| Elastic Stack | Log search and visualization |
| Velociraptor | Endpoint hunting at scale |
| MITRE ATT&CK Navigator | Map coverage and gaps |
| Jupyter Notebooks | Data analysis and automation |
| Zeek (Bro) | Network protocol analysis |

---

# TOPIC 8: SECURITY AUTOMATION (SOAR)

## 8.1 Automation in Security Operations

### The Need for Automation
Modern SOCs face:
- Volume problem: Thousands of alerts per day — humans cannot process all
- Complexity problem: Attacks span multiple systems
- Speed problem: Attackers move faster than manual response allows
- Skills shortage: Not enough qualified security analysts
- Alert fatigue: Analysts miss real threats due to noise

**Automation addresses**: Repetitive, time-consuming, low-judgment tasks (enrichment, lookups, initial triage)

### SOAR — Security Orchestration, Automation and Response

SOAR platforms provide:
1. **Orchestration**: Connect and coordinate disparate security tools
2. **Automation**: Execute tasks without human intervention
3. **Response**: Automated or guided incident response actions

### Benefits of SOAR
- Reduce MTTD and MTTR
- Consistent response (no human error)
- Free analysts for higher-value work
- Scale without adding headcount
- Enforce compliance (documented, auditable responses)

### SOAR vs SIEM
| Feature | SIEM | SOAR |
|---------|------|------|
| Primary function | Detect and alert | Respond and orchestrate |
| Scope | Log aggregation, correlation | Workflow automation, tool integration |
| Output | Alerts | Closed incidents + actions taken |
| Human interaction | Alert review | Guided/automated response |
| Integration | Log sources | All security tools |

---

## 8.2 Playbooks and Workflows

### What is a Playbook?
A playbook is a documented, repeatable procedure for responding to a specific incident type. In SOAR, playbooks are automated workflows.

### Playbook Types

**Automated Playbooks**: Fully automated — no human needed
- Example: IP lookup in threat intel → if malicious, block at firewall automatically

**Semi-Automated (Human-in-the-Loop)**: Automation does enrichment, human makes decision
- Example: Phishing email analyzed automatically, analyst approves/denies remediation

**Manual Playbooks**: Step-by-step guide for human to follow
- Used for complex incidents requiring judgment

### Sample Playbook: Phishing Email Response

```
TRIGGER: User reports phishing email

Step 1: [AUTO] Extract sender IP, domain, URL, attachment hash
Step 2: [AUTO] Query threat intel feeds (VirusTotal, URLscan, etc.)
Step 3: [AUTO] Search email gateway for same email sent to other users
Step 4: [AUTO] Search SIEM for any user who clicked the link
Step 5: [HUMAN] Review enriched results — real phishing or benign?
  → If benign: Close ticket, mark as false positive
  → If confirmed phishing:
Step 6: [AUTO] Delete all instances of email from mailboxes
Step 7: [AUTO] Block sender domain/IP at email gateway
Step 8: [AUTO] Block malicious URL at web proxy/DNS
Step 9: [HUMAN] If any users clicked link: escalate to endpoint investigation
Step 10: [AUTO] Notify affected users and their managers
Step 11: [AUTO] Document and close case
```

### Sample Playbook: Ransomware Response

```
TRIGGER: EDR detects mass file encryption

Step 1: [AUTO] Isolate affected host from network
Step 2: [AUTO] Capture memory dump
Step 3: [AUTO] Block C2 IP/domain at firewall
Step 4: [HUMAN] Confirm ransomware (not legitimate encryption)
Step 5: [HUMAN] Assess scope — identify all affected systems
Step 6: [AUTO] Search SIEM for lateral movement from patient zero
Step 7: [HUMAN] Decision: Pay ransom vs restore from backup?
Step 8: [AUTO] Quarantine all identified infected systems
Step 9: [HUMAN] Initiate recovery from clean backups
Step 10: [HUMAN] Root cause analysis — how did ransomware get in?
```

### SOAR Integration Points
- SIEM (receive alerts, update cases)
- EDR (isolate host, kill process, collect forensics)
- Firewall/NGFW (block IPs, domains)
- Email gateway (delete emails, block senders)
- Active Directory (disable accounts, reset passwords)
- Threat Intel platforms (enrich IOCs)
- Ticketing systems (Jira, ServiceNow)
- Vulnerability management (Tenable, Qualys)
- Cloud platforms (AWS, Azure, GCP)

### Popular SOAR Platforms
| Platform | Vendor |
|----------|--------|
| Cortex XSOAR | Palo Alto Networks |
| Splunk SOAR (Phantom) | Splunk |
| IBM Security SOAR (Resilient) | IBM |
| Microsoft Sentinel (Logic Apps) | Microsoft |
| Swimlane | Swimlane |
| D3 SOAR | D3 Security |

---

# TOPIC 9: CLOUD SECURITY OPERATIONS

## 9.1 Cloud Security Basics

### Cloud Service Models
**IaaS (Infrastructure as a Service)**
- Provider manages: Physical hardware, networking, virtualization
- Customer manages: OS, middleware, applications, data
- Examples: AWS EC2, Azure VMs, GCP Compute Engine

**PaaS (Platform as a Service)**
- Provider manages: Infrastructure + OS + runtime
- Customer manages: Applications and data
- Examples: AWS Elastic Beanstalk, Azure App Service, Google App Engine

**SaaS (Software as a Service)**
- Provider manages: Everything
- Customer manages: Data, user access configuration
- Examples: Microsoft 365, Salesforce, Google Workspace

### Cloud Deployment Models
- **Public cloud**: AWS, Azure, GCP — shared infrastructure
- **Private cloud**: Dedicated infrastructure, higher control
- **Hybrid cloud**: Mix of on-prem and public cloud
- **Multi-cloud**: Multiple cloud providers

---

## 9.2 Shared Responsibility Model

The shared responsibility model defines who is responsible for security in cloud environments.

```
RESPONSIBILITY: Customer ←────────────────────→ Cloud Provider
                         DATA
                         IDENTITIES & ACCESS
                         APPLICATIONS
              ──────────────────────────────
                         (IaaS) GUEST OS
                         (IaaS) NETWORK CONTROLS
              ──────────────────────────────
                         (Provider) HYPERVISOR
                         (Provider) PHYSICAL HOSTS
                         (Provider) PHYSICAL NETWORK
                         (Provider) PHYSICAL DATACENTER
```

**Key principle**: Cloud providers secure the cloud infrastructure ("security OF the cloud"); customers secure what they put IN the cloud.

**Common Customer Mistakes:**
- Leaving S3 buckets/Azure Blob storage publicly accessible
- Not enabling MFA on cloud admin accounts
- Not encrypting sensitive data at rest
- Over-permissive IAM roles (violating least privilege)
- Not logging/monitoring cloud activity
- Exposed management interfaces (RDP, SSH) to internet

---

## 9.3 Monitoring Cloud Environments

### Cloud-Native Logging Services

**AWS:**
- **CloudTrail**: API activity logs (who did what, when)
- **CloudWatch**: Infrastructure and application metrics/logs
- **GuardDuty**: Threat detection service (ML-based)
- **Security Hub**: Centralized security findings
- **VPC Flow Logs**: Network traffic metadata
- **Config**: Configuration change tracking

**Azure:**
- **Azure Monitor**: Logs and metrics
- **Azure Activity Log**: Subscription-level events
- **Azure AD Sign-in Logs**: Authentication events
- **Microsoft Defender for Cloud**: Security posture + threat detection
- **NSG Flow Logs**: Network traffic logs
- **Azure Sentinel**: Cloud SIEM

**GCP:**
- **Cloud Audit Logs**: Admin activity, data access, system event logs
- **Cloud Monitoring**: Metrics and alerting
- **Security Command Center**: Centralized security findings
- **VPC Flow Logs**: Network traffic

### Cloud Security Threats

**Misconfiguration** (most common cloud breach cause)
- Exposed storage buckets
- Overly permissive security groups (e.g., 0.0.0.0/0 on SSH)
- Disabled logging
- Publicly accessible databases

**Identity-Based Attacks**
- Stolen credentials for cloud console access
- Compromised IAM keys/service accounts
- Privilege escalation via misconfigured roles

**Cloud Workload Attacks**
- Container escape (breaking out of Docker/Kubernetes)
- Serverless function abuse
- Cryptomining (cloud resources are attractive targets)
- Supply chain attacks on container images

**Data Exposure**
- Public S3 buckets (Capital One breach 2019)
- Accidental exposure via misconfigured APIs

### Cloud Security Best Practices
- Enable CloudTrail/Activity Log logging in all regions
- Use Cloud Security Posture Management (CSPM) — Prisma Cloud, Wiz, Orca
- Enforce MFA on all accounts, especially root/admin
- Apply least privilege to all IAM roles
- Encrypt data at rest and in transit
- Regular configuration audits (AWS Config Rules, Azure Policy)
- Enable GuardDuty / Defender for Cloud for threat detection
- Use Cloud Access Security Broker (CASB) for SaaS visibility
- Implement SCPs (Service Control Policies) in AWS Organizations

---

# TOPIC 10: VULNERABILITY & PATCH MANAGEMENT

## 10.1 Vulnerability Scanning

### What is a Vulnerability?
A vulnerability is a weakness in a system, application, or process that could be exploited to cause harm.

**Vulnerability ≠ Risk**: Risk requires both a vulnerability AND a threat to exploit it, AND an impact if exploited.

### CVE and CVSS

**CVE (Common Vulnerabilities and Exposures)**
- Unique identifier for publicly disclosed vulnerabilities
- Format: CVE-YEAR-NUMBER (e.g., CVE-2021-44228 = Log4Shell)
- Maintained by MITRE, published in NVD (National Vulnerability Database)

**CVSS (Common Vulnerability Scoring System)**
- Standardized score 0.0 – 10.0 for vulnerability severity
- **Base Score** components:
  - Attack Vector (Network/Adjacent/Local/Physical)
  - Attack Complexity (Low/High)
  - Privileges Required (None/Low/High)
  - User Interaction (None/Required)
  - Scope (Unchanged/Changed)
  - Confidentiality/Integrity/Availability impact

**CVSS Severity Ratings:**
| Score | Rating |
|-------|--------|
| 0.0 | None |
| 0.1 – 3.9 | Low |
| 4.0 – 6.9 | Medium |
| 7.0 – 8.9 | High |
| 9.0 – 10.0 | Critical |

### Types of Vulnerability Scanning

**Network/External Scanning**
- Scan from outside the organization
- Identifies exposed services and vulnerabilities attackers see
- Tools: Qualys External, Tenable.io

**Internal/Credentialed Scanning**
- Authenticated scan with admin credentials
- Deeper visibility (installed software, configuration, patch status)
- More accurate, fewer false positives
- Tools: Nessus, Qualys, Rapid7 InsightVM

**Web Application Scanning (DAST)**
- Dynamic analysis of web applications
- Finds: SQLi, XSS, CSRF, authentication flaws
- Tools: Burp Suite, OWASP ZAP, Acunetix

**Container/Cloud Scanning**
- Scan container images and cloud configurations
- Tools: Trivy, Clair, Prisma Cloud, Wiz

### Scanning Frequency Best Practices
- External perimeter: Weekly or continuous
- Internal network: Monthly or after significant changes
- Critical systems: Continuous or weekly
- Web applications: After each deployment + scheduled

---

## 10.2 Risk Prioritization

### The Challenge
Organizations may have thousands of vulnerabilities — cannot patch everything immediately. Must prioritize.

### Prioritization Factors

**CVSS Score** — but CVSS alone is insufficient:
- Many critical-rated vulnerabilities have no known exploits
- Medium-rated vulnerabilities may be actively exploited

**EPSS (Exploit Prediction Scoring System)**
- Probability (0-100%) that a vulnerability will be exploited in the wild within 30 days
- More actionable than CVSS alone
- Published daily at FIRST.org

**CISA KEV (Known Exploited Vulnerabilities) Catalog**
- CISA maintains a list of vulnerabilities actively exploited in the wild
- Federal agencies MUST patch within specified timeframes
- Best practice: prioritize KEV vulnerabilities regardless of CVSS

**Asset Criticality**
- Vulnerability on crown-jewel system = higher priority
- Vulnerability on isolated test system = lower priority

**Exploitability**
- Is there public exploit code? (Exploit-DB, Metasploit, GitHub)
- Is it being used in active campaigns? (Threat intel)
- Is it reachable from internet?

**Business Context**
- Would exploitation impact critical business process?
- Does system hold sensitive data?

### Risk-Based Vulnerability Management (RBVM)
Modern approach combining CVSS + EPSS + threat intel + asset criticality + business context

**Prioritization Formula (simplified):**
```
Priority = CVSS + EPSS weight + (Is in KEV? +++) + (Asset criticality) + (Threat intel context)
```

---

## 10.3 Patch Management

### Patch Management Process

1. **Identify**: Discover vulnerabilities through scanning
2. **Assess**: Prioritize based on risk (CVSS, EPSS, business impact)
3. **Obtain**: Download patches from vendor (verify integrity with hash)
4. **Test**: Deploy in test/staging environment first
5. **Deploy**: Roll out to production (change management process)
6. **Verify**: Re-scan to confirm vulnerability remediated
7. **Report**: Track and report patch compliance

### Patch SLAs (Common Benchmarks)
| Severity | Typical SLA |
|----------|------------|
| Critical | 24-72 hours |
| High | 7-14 days |
| Medium | 30 days |
| Low | 90 days |

### Challenges in Patch Management
- Legacy systems that cannot be patched (OT/ICS, old OS)
- Application compatibility issues after patching
- Vendor patch quality (patch causing outages)
- Patch testing time vs urgency
- Distributed environments (remote workers, branch offices)

### Compensating Controls When Patching is Not Possible
- Virtual Patching: WAF or IPS rules to block exploitation attempts
- Network segmentation: Isolate unpatched systems
- Enhanced monitoring: Increase logging and alerting on vulnerable systems
- Disable vulnerable features/services if not needed

---

# TOPIC 11: GOVERNANCE, RISK & COMPLIANCE

## 11.1 Security Policies and Procedures

### Policy Hierarchy
```
[Mission/Vision] → [Security Strategy] → [Policies] → [Standards] → [Procedures] → [Guidelines]
```

**Policy**: High-level statement of management intent. "All user passwords must meet complexity requirements."

**Standard**: Specific, measurable requirement. "Passwords must be minimum 12 characters, include uppercase, lowercase, number, and special character."

**Procedure**: Step-by-step instructions for how to implement. "How to configure password policy in Active Directory."

**Guideline**: Recommended (not mandatory) best practices. "Tips for creating memorable strong passwords."

### Types of Security Policies
- **Information Security Policy**: Top-level, overall security commitment
- **Acceptable Use Policy (AUP)**: What employees may/may not do with IT resources
- **Password Policy**: Requirements for authentication credentials
- **Data Classification Policy**: How data is categorized and protected
- **Incident Response Policy**: How incidents are handled
- **Change Management Policy**: How changes to systems are controlled
- **Business Continuity Policy**: How business continues after disruption
- **Remote Work/BYOD Policy**: Security requirements for remote access

### Good Policy Characteristics (from Chapter 1)
1. Directly traceable to security strategy
2. States one general security mandate
3. Clear and understandable to all affected parties
4. Rarely more than a few sentences
5. Rarely more than two dozen total policies
6. Reviewed and updated regularly

---

## 11.2 Risk Management Basics

(Covered extensively in Chapter 2 and Topic 1 — key summary here)

### Risk Formula
```
Risk = Threat × Vulnerability × Impact
```

### Risk Treatment Options (4 Ts)
- **Terminate** (Avoid): Stop the activity that creates the risk
- **Transfer**: Pass risk to another party (insurance, outsourcing)
- **Treat** (Mitigate): Implement controls to reduce risk
- **Tolerate** (Accept): Accept the risk as-is (residual risk within appetite)

### Risk Appetite vs Risk Tolerance
- **Risk Appetite**: The total amount of risk an organization is willing to accept (strategic)
- **Risk Tolerance**: The acceptable variation around risk appetite (operational)

### Residual Risk
The risk remaining after controls are applied. Must be formally accepted by appropriate management.

---

## 11.3 Compliance with Standards

### ISO/IEC 27001 — ISMS
- International standard for Information Security Management Systems
- Based on Plan-Do-Check-Act (PDCA) cycle
- Certification involves third-party audit
- 114 controls organized in 14 domains (Annex A):
  1. Security Policy
  2. Organizing Information Security
  3. Human Resources Security
  4. Asset Management
  5. Access Control
  6. Cryptography
  7. Physical & Environmental Security
  8. Operations Security
  9. Communications Security
  10. System Acquisition, Development & Maintenance
  11. Supplier Relationships
  12. Information Security Incident Management
  13. Business Continuity Management
  14. Compliance

### NIST Cybersecurity Framework (CSF)
Five core functions:
- **Identify**: Asset management, risk assessment, governance
- **Protect**: Access control, training, data security, protective technology
- **Detect**: Anomalies, continuous monitoring, detection processes
- **Respond**: Response planning, communications, analysis, mitigation
- **Recover**: Recovery planning, improvements, communications

Implementation Tiers: Partial → Risk-Informed → Repeatable → Adaptive

### NIST SP 800-53
- Security and privacy controls for federal information systems
- Over 1,000 controls organized in 20 families
- Used as baseline for many other frameworks

### PCI-DSS (Payment Card Industry Data Security Standard)
12 requirements protecting cardholder data:
1. Install and maintain firewalls
2. Don't use vendor-supplied defaults
3. Protect stored cardholder data
4. Encrypt transmission over public networks
5. Use anti-malware
6. Develop secure systems
7. Restrict access to cardholder data by need-to-know
8. Identify and authenticate access
9. Restrict physical access
10. Track and monitor all access to network resources
11. Test security systems regularly
12. Maintain information security policy

### GDPR (General Data Protection Regulation)
- EU regulation for personal data protection
- Applies to any organization processing EU citizen data
- Key requirements:
  - Lawful basis for processing
  - Data subject rights (access, erasure, portability)
  - Privacy by design
  - Data breach notification: 72 hours to supervisory authority
  - Data Protection Officer (DPO) for large-scale processing
  - Fines up to €20 million or 4% of global annual turnover

### SOC 2
- Auditing standard by AICPA
- Five Trust Service Criteria: Security, Availability, Processing Integrity, Confidentiality, Privacy
- Type 1: Point-in-time assessment
- Type 2: Assessment over a period (6-12 months) — more credible

---

# TOPIC 12: HUMAN FACTORS IN SECURITY

## 12.1 Social Engineering

### Definition
Social engineering is the psychological manipulation of people into performing actions or divulging confidential information, bypassing technical controls by targeting the human element.

**Key principle**: It's easier to hack a person than a computer.

### Social Engineering Techniques

**Phishing** — most common
- Mass email campaign impersonating trusted entity
- Goal: steal credentials, deliver malware, initiate wire transfer

**Spear Phishing**
- Targeted phishing against specific individual using personal information
- Much higher success rate than generic phishing
- Requires reconnaissance (LinkedIn, company website, OSINT)

**Whaling**
- Spear phishing targeting executives (CEO, CFO, Board members)
- Higher value target — more access, financial authority

**Business Email Compromise (BEC)**
- Compromise or impersonate executive email
- Request wire transfer, gift cards, or sensitive data
- No malware involved — pure social engineering
- $50+ billion in losses globally

**Vishing (Voice Phishing)**
- Phone calls impersonating IT support, bank, government
- Example: "This is Microsoft support, your computer is infected"
- Increasingly uses AI-generated voice cloning

**Smishing (SMS Phishing)**
- Malicious SMS messages
- Links to fake websites, malicious downloads
- Example: "Your parcel is held, click to reschedule delivery"

**Pretexting**
- Creating a fabricated scenario to gain trust
- Example: Pretending to be IT auditor conducting security check
- Often combined with vishing

**Baiting**
- Leaving infected USB drives in parking lot
- Curiosity-driven: "SALARY INFORMATION Q3"
- Physical delivery of malware

**Tailgating / Piggybacking**
- Following authorized person through secured door
- Social pressure (holding door for someone)
- Exploitation of politeness

**Quid Pro Quo**
- Offering something in exchange for information
- Example: "I'll fix your computer if you give me your password"

### Why Social Engineering Works
- **Authority**: Complying with perceived authority figures
- **Urgency**: "Act now or your account will be locked"
- **Scarcity**: "Limited time offer"
- **Social proof**: "Everyone in your team has already verified their account"
- **Liking**: People comply with those they like/trust
- **Reciprocity**: Feeling obligated to return favors
- **Fear**: Threats of consequences if action not taken

---

## 12.2 Phishing Attacks

### Phishing Attack Anatomy

**Email Phishing Components:**
1. **Sender spoofing**: From: security@amaz0n.com (lookalike domain)
2. **Subject line**: Urgent: Account suspended / Security Alert
3. **Body**: Convincing HTML email mimicking legitimate brand
4. **Call to action**: "Click here to verify your account"
5. **Link**: Points to credential harvesting page

**Phishing Landing Page:**
- Cloned version of legitimate website
- HTTPS may be present (doesn't mean safe)
- Captures credentials and forwards to real site (transparent)

### Identifying Phishing Indicators
- Sender domain doesn't match company domain
- Generic greeting ("Dear Customer" instead of your name)
- Grammar and spelling errors (though AI is improving this)
- Urgency and threats
- Requests for credentials/personal info
- Hovering over link shows different URL
- Attachments: .exe, .zip, .js, Office files with macros

### Email Authentication Mechanisms

**SPF (Sender Policy Framework)**
- DNS record listing authorized mail servers for a domain
- Prevents sender spoofing at basic level
- Checks: Was this email sent from an authorized IP for this domain?

**DKIM (DomainKeys Identified Mail)**
- Cryptographic signature added to email header
- Recipient verifies signature against public key in DNS
- Proves email wasn't tampered with in transit

**DMARC (Domain-based Message Authentication, Reporting & Conformance)**
- Policy that tells receivers what to do when SPF/DKIM fail
- Policies: none (monitor), quarantine, reject
- Provides reporting on authentication failures

### Anti-Phishing Defenses
- Email security gateway (Proofpoint, Mimecast, Microsoft Defender)
- URL rewriting and sandboxing of links
- Attachment sandboxing
- User awareness training and simulations
- MFA (prevents credential reuse even if stolen)
- DMARC policy enforcement

---

## 12.3 Security Awareness

### Building a Security Awareness Program

**Why Awareness Programs Fail:**
- One-time annual training (not retained)
- Generic, not relevant to employees' roles
- No reinforcement
- Compliance checkbox, not culture change

**Effective Awareness Program Components:**

1. **Phishing Simulations**
   - Regular simulated phishing campaigns
   - Immediate feedback when user clicks
   - Targeted training for repeat clickers
   - Track click rates over time

2. **Microlearning**
   - Short (3-5 minute) training modules
   - Delivered regularly (monthly)
   - Topic-specific: phishing, passwords, social media

3. **Role-Based Training**
   - Finance team: BEC and wire fraud
   - HR team: Pretexting targeting employee data
   - IT team: Technical security practices
   - Executives: Whaling and targeted attacks

4. **Security Culture**
   - Leadership champions security
   - Rewarding good security behavior
   - Easy reporting mechanisms (phishing report button)
   - No blame culture for mistakes

5. **Metrics**
   - Phishing simulation click rates (target: <5%)
   - Training completion rates
   - Number of reported suspicious emails
   - Incidents caused by human error

### The Human as a Security Control
- Humans can detect what technology misses (gut feeling)
- Users who report suspicious activity are valuable
- Security champions embedded in business units
- Vigilant staff = additional detection layer

---

# TOPIC 13: EMERGING & GEOPOLITICAL THREATS

## 13.1 Cyber Warfare

### Definition
Cyber warfare refers to the use of cyberattacks by nation-states or state-sponsored actors to damage, disrupt, or destroy the critical infrastructure, military systems, or economy of adversaries.

### Objectives of Cyber Warfare
- **Espionage**: Steal military, diplomatic, or trade secrets
- **Sabotage**: Disrupt critical infrastructure (power grids, water, finance)
- **Influence operations**: Disinformation, election interference
- **Pre-positioning**: Plant malware for future activation in conflict
- **Deterrence**: Demonstrate capability to discourage aggression

### Historical Examples of Cyber Warfare

**Stuxnet (2010)**
- First known cyberweapon designed for physical destruction
- Targeted Iranian nuclear centrifuges at Natanz
- Joint US-Israeli operation (alleged)
- Modified centrifuge speeds while reporting normal operations
- Destroyed ~1,000 centrifuges
- Key milestone: Cyber can cause kinetic (physical) damage

**Ukraine Power Grid Attacks (2015, 2016)**
- BlackEnergy and Industroyer malware
- Attributed to Russia's Sandworm APT group
- Caused power outages affecting hundreds of thousands
- First confirmed attack causing power grid outage

**NotPetya (2017)**
- Disguised as ransomware, functioned as wiper
- Attributed to Russian GRU
- Spread initially via Ukrainian accounting software (MeDoc)
- Spread globally: Maersk, FedEx, Merck
- $10 billion in damages

**Colonial Pipeline (2021)**
- DarkSide ransomware (criminal group with state links)
- Shut down major US fuel pipeline for 6 days
- Caused fuel shortages across US East Coast
- $4.4M ransom paid (partially recovered by FBI)

**Russia-Ukraine War (2022-present)**
- Extensive cyber operations alongside kinetic warfare
- DDoS attacks on Ukrainian government websites
- Wiper malware (WhisperGate, HermeticWiper)
- Satellite communication attacks (Viasat)
- CERT-UA reports hundreds of incidents

---

## 13.2 Nation-State Threats

### Nation-State Capabilities
Nation-state threat actors differ from criminal groups:
- **Resources**: Near-unlimited budget and personnel
- **Patience**: Operate for months/years (persistent)
- **Zero-days**: Stockpile and use previously unknown vulnerabilities
- **Custom tools**: Develop purpose-built malware suites
- **Intelligence**: Combine cyber with SIGINT, HUMINT
- **Strategic objectives**: Geopolitical goals, not financial gain (usually)

### Major Nation-State Threat Actors

**Russia**
- Groups: APT28 (Fancy Bear/GRU), APT29 (Cozy Bear/SVR), Sandworm (GRU)
- Targets: Government, military, energy, election infrastructure
- Notable ops: SolarWinds, DNC hack, Ukraine power grid
- Techniques: Spear phishing, supply chain, living-off-the-land

**China**
- Groups: APT41, APT10 (Cloud Hopper), Volt Typhoon
- Targets: Intellectual property, defense, telecommunications, critical infrastructure
- Notable ops: OPM breach (4M+ federal employee records), Hafnium (Exchange servers)
- Goal: Economic espionage, pre-positioning in critical infrastructure

**North Korea**
- Groups: Lazarus Group, APT38, Kimsuky
- Targets: Banks, cryptocurrency exchanges, defense
- Notable ops: Sony hack (2014), Bangladesh Bank heist ($81M), WannaCry
- Motivation: Revenue generation for sanctioned regime

**Iran**
- Groups: APT33, APT34 (OilRig), APT35 (Charming Kitten)
- Targets: Energy, government, opposition groups, journalists
- Notable ops: Shamoon (Saudi Aramco — destroyed 35,000 computers), attacks on US banks

### Five Eyes Intelligence Alliance
Countries sharing signals intelligence: US, UK, Canada, Australia, New Zealand
- Coordinate attribution and response to nation-state threats
- Jointly publish advisories (CISA, NCSC)

---

## 13.3 Supply Chain Risks

### What is a Supply Chain Attack?
An attack targeting a less-secure element in the supply chain to compromise the primary target. Rather than attacking a hardened organization directly, attackers compromise a trusted vendor, software supplier, or third party.

### Why Supply Chain Attacks Work
- Large organizations have hundreds of suppliers with network access
- Software vendors have trusted, privileged access to customers
- Security of supplier is beyond direct control
- Single compromise can affect thousands of downstream victims

### Notable Supply Chain Attacks

**SolarWinds SUNBURST (2020)**
- Attackers compromised SolarWinds build server
- Inserted malicious code (SUNBURST backdoor) into Orion IT monitoring software
- Update distributed to ~18,000 customers
- Active victims included US Treasury, State Dept, DHS, FireEye
- Attributed to Russian SVR (APT29)
- ~9 months of undetected access

**3CX Supply Chain Attack (2023)**
- 3CX VoIP desktop app compromised
- Trojanized installer downloaded malware from GitHub CDN
- Used in targeted attacks against cryptocurrency and industrial companies
- Attributed to Lazarus Group (North Korea)
- Notable: Supply chain attack spawned by another supply chain attack (Trading Technologies)

**Codecov Supply Chain Attack (2021)**
- CI/CD tool Codecov's bash uploader script modified
- Stole environment variables (including cloud credentials) from ~29,000 companies

### Protecting Against Supply Chain Attacks

**For Software:**
- Software Bill of Materials (SBOM): Inventory of all components in software
- Verify code signatures and checksums before deployment
- Monitor for unexpected network connections from trusted software
- Privileged access management for third-party tools
- Zero trust: Limit what vendor tools can access

**For Third-Party Vendors:**
- Vendor risk assessments (security questionnaires, SOC 2 reports)
- Contractual security requirements
- Limit network access to minimum necessary
- Monitor vendor network access
- Incident notification requirements in contracts

---

## 13.4 AI in Cybersecurity

### AI Used for Defense

**Threat Detection**
- ML models for anomaly detection (UEBA)
- Behavioral AI in EDR (detecting unknown malware)
- AI-driven SIEM correlation
- NLP for analyzing threat intelligence reports

**Automation**
- Automated triage and enrichment
- AI-powered SOAR playbooks
- Intelligent alert prioritization
- Automated vulnerability prioritization

**Threat Hunting**
- ML to identify anomalous patterns in large datasets
- Natural language querying of security data

### AI Used for Offense (Threat Actors)

**AI-Enhanced Phishing**
- Grammatically perfect, personalized phishing emails at scale
- AI-generated fake news/disinformation
- AI analyzes OSINT to personalize attacks
- LLMs can draft convincing spear phishing content

**Voice Cloning / Deepfakes**
- Clone executive's voice for BEC vishing attacks
- Deepfake video for social engineering
- Example: Hong Kong finance firm lost $25M to deepfake video call impersonating CFO (2024)

**Automated Vulnerability Discovery**
- AI-assisted fuzzing and vulnerability research
- LLMs can assist in exploit development
- Automated scanning and attack tools

**Malware Development**
- AI-generated polymorphic malware (changes signature constantly)
- Code obfuscation automation
- AI-assisted evasion of security tools

### AI-Specific Security Risks
- **Adversarial ML**: Crafting inputs to fool ML-based security tools
- **Model poisoning**: Corrupting training data to degrade detection
- **Prompt injection**: Attacking LLM-powered security tools
- **AI supply chain**: Compromised AI models or training pipelines

---

# EXAM PREPARATION: KEY FORMULAS AND MNEMONICS

## Important Formulas
- **ALE** = Asset Value (AV) × Exposure Factor (EF) × Annualized Rate of Occurrence (ARO)
- **SLE** (Single Loss Expectancy) = Asset Value × Exposure Factor
- **ALE** = SLE × ARO
- **Risk** = Threat × Vulnerability × Impact

## Key Mnemonics

**CIA Triad**: Confidentiality, Integrity, Availability

**NIST CSF**: **I**dentify **P**rotect **D**etect **R**espond **R**ecover → "**I P D R R**" (I Protect Data, Respond Right)

**Incident Response (NIST)**: Prepare → Detect/Analyze → Contain/Eradicate/Recover → Post-Incident

**Risk Treatment (4 Ts)**: Terminate, Transfer, Treat, Tolerate

**Kill Chain**: Recon → Weaponize → Deliver → Exploit → Install → C2 → Act

**Order of Volatility**: Registers → RAM → Network → Processes → Disk → Backups → Printed

---


---

# FINAL YEAR CYBERSECURITY EXAMINATION PAPER

**Module**: Security Operations and Cyber Defence
**Total Marks**: 60 | **Time Allowed**: 3 Hours
**Instructions**: Answer ALL questions in ALL sections.

---

## SECTION A - CONCEPTS (20 Marks)
### Q1: Answer ALL FIVE questions. Each worth 4 marks.

---

**Q1.1** Define "Advanced Persistent Threat (APT)" and explain THREE characteristics distinguishing APT actors from ordinary cybercriminals. (4 marks)

MODEL ANSWER:

An Advanced Persistent Threat is a sophisticated, long-duration cyberattack by a well-resourced threat actor (typically nation-state or state-sponsored) maintaining prolonged, stealthy access to achieve strategic objectives such as espionage or sabotage. (1 mark)

THREE distinguishing characteristics (1 mark each):

1. PERSISTENCE: APT actors remain inside networks for months/years (average dwell time exceeds 200 days), methodically pursuing objectives. Criminals conduct hit-and-run attacks.

2. ADVANCED CAPABILITIES: APTs develop custom malware, use zero-day exploits, and employ sophisticated evasion (LOLBins, fileless malware). Criminal groups typically use commodity tools from underground markets.

3. STRATEGIC MOTIVATION: APTs pursue geopolitical goals - espionage, sabotage, IP theft aligned with their sponsoring nation - not primarily financial gain. This drives longer operational patience and greater stealth.

---

**Q1.2** Explain Zero Trust and describe THREE core principles with implementation examples. (4 marks)

MODEL ANSWER:

Zero Trust is a security architecture built on "never trust, always verify." It eliminates implicit trust granted by network location - being inside the corporate network no longer means being trusted. Every access request must be explicitly authenticated and authorized. (1 mark)

THREE core principles with examples (1 mark each):

1. VERIFY EXPLICITLY: Authenticate every request using all available signals. Example: Azure AD Conditional Access evaluates user identity, device compliance, location, and risk score before granting access - even from inside the office network.

2. LEAST PRIVILEGE ACCESS: Grant only minimum permissions for minimum time. Example: Just-in-Time (JIT) privileged access via PAM - an admin requests elevated access for a specific task, granted for 1 hour, then automatically revoked.

3. ASSUME BREACH: Design and operate as if attackers are already inside. Example: Microsegmentation blocks workstation-to-workstation traffic by default - a compromised laptop cannot reach finance servers - limiting lateral movement radius.

---

**Q1.3** Describe the four phases of the NIST SP 800-61 Incident Response Lifecycle and key activities in each phase. (4 marks)

MODEL ANSWER:

1. PREPARATION (1 mark): Building response capability before incidents. Activities: develop/test IR plans; train IR team; deploy SIEM/EDR/SOAR; create playbooks; conduct tabletop exercises; establish out-of-band communication channels.

2. DETECTION AND ANALYSIS (1 mark): Identifying and understanding incidents. Activities: monitor alerts; triage to confirm true positive; determine scope and affected systems; classify severity; preserve evidence; document findings with timestamps; notify stakeholders.

3. CONTAINMENT, ERADICATION AND RECOVERY (1 mark): Limit damage and restore operations. Containment: isolate affected systems. Eradication: remove malware, close attack vectors, patch vulnerabilities. Recovery: restore from clean backups, validate cleanliness, return to production with enhanced monitoring.

4. POST-INCIDENT ACTIVITY (1 mark): Learn and improve. Activities: write formal incident report; conduct lessons-learned meeting within 2 weeks; update playbooks and SIEM rules; calculate MTTD/MTTR; share threat intel with peers/ISACs.

---

**Q1.4** Explain defence-in-depth and describe FOUR distinct layers with an appropriate control for each. (4 marks)

MODEL ANSWER:

Defence-in-depth is a layered security strategy using multiple independent controls so that if one layer fails, subsequent layers continue to protect. No single control is relied upon exclusively.

FOUR layers (1 mark each - layer + control + brief justification):

1. PERIMETER LAYER: Next-Generation Firewall (NGFW) with IPS - inspects all inbound/outbound traffic, blocks known malicious traffic, prevents unauthorized services from being exposed to the internet.

2. IDENTITY AND ACCESS LAYER: Multi-Factor Authentication (MFA) + Privileged Access Management (PAM) - stolen credentials alone cannot grant access; privileged actions require additional verification and are time-limited.

3. ENDPOINT LAYER: EDR (e.g., CrowdStrike Falcon) - behavioral detection on every device, can isolate compromised endpoints, provides full forensic telemetry for investigation.

4. DATA LAYER: Encryption at rest (AES-256) and in transit (TLS 1.3) + DLP - exfiltrated data is unreadable without keys; bulk data transfers trigger alerts for investigation.

---

**Q1.5** Define "false positive" and "false negative" in SIEM alert management. Why are false negatives more dangerous? Describe TWO strategies to reduce false positives without increasing false negatives. (4 marks)

MODEL ANSWER:

FALSE POSITIVE: Alert fires for a benign event incorrectly flagged as malicious. (0.5 marks)
FALSE NEGATIVE: A genuine attack generates NO alert - the SIEM misses it entirely. (0.5 marks)

WHY FNs ARE MORE DANGEROUS (1 mark): A false negative means a real attack proceeds completely undetected - the attacker operates freely, exfiltrating data, establishing persistence, moving laterally, with zero SOC awareness. False positives waste analyst time and cause alert fatigue, but the threat can still be detected. A false negative makes timely response impossible, maximizing attacker dwell time and damage.

TWO FP REDUCTION STRATEGIES (1 mark each):

1. CONDITIONAL WHITELISTING: Apply exclusions with context conditions rather than broad exceptions. Example: suppress port-scan alerts from the vulnerability scanner's IP ONLY during the scheduled 2am scan window. Outside that window, the rule fires normally - eliminating legitimate-activity noise while maintaining detection at all other times.

2. MULTI-EVENT RISK-SCORE CORRELATION: Combine multiple low-confidence signals into a risk score; alert only when threshold exceeded. Example: 5 failed logins (score: 10) + successful login (score: 20) + new scheduled task (score: 15) = 45 - alert at threshold 40. Dramatically reduces single-event false positives while detecting multi-stage attacks with higher confidence.

---

## SECTION B - SCENARIO-BASED APPLIED SECURITY (25 Marks)
### Q2: Answer ALL FIVE questions. Each worth 5 marks.

---

**Q2.1 - Ransomware Incident**

A hospital SOC receives EDR alerts at 03:14: mass file encryption on a file server (.lockbit3 extension). A compromised IT admin account authenticated via exposed RDP from an external IP two days prior. Attacker had 48-hour dwell time before deploying ransomware.

(a) Map attacker activity to the Cyber Kill Chain. (2 marks)
(b) Describe IMMEDIATE containment steps in priority order. (3 marks)

MODEL ANSWER:

(a) Kill Chain Mapping (0.5 per stage, max 2 marks):
- RECONNAISSANCE: Internet scanning discovered exposed RDP port (Shodan/Censys).
- INITIAL ACCESS: IT admin credentials compromised via brute force/credential stuffing against RDP.
- PERSISTENCE + LATERAL MOVEMENT: 48-hour dwell - credential theft, network discovery, file server identified as target.
- ACTIONS ON OBJECTIVES: Deployed LockBit 3.0 ransomware, encrypted files, dropped ransom notes.

(b) Immediate Containment (1 mark each):

1. NETWORK-ISOLATE ALL AFFECTED SYSTEMS NOW: Use EDR to isolate file server and any hosts showing encryption. Block attacker source IP at firewall. Do NOT power off - preserve volatile memory. Document isolation timestamp.

2. DISABLE COMPROMISED ADMIN ACCOUNT AND AUDIT PRIVILEGES: Immediately disable the compromised account in AD. Force password resets on ALL accounts with server/domain admin privileges. Review for attacker-created backdoor accounts or privilege escalations during the 48-hour window.

3. DETERMINE BLAST RADIUS: Query SIEM/EDR for all activity from compromised account over 48 hours. Identify all accessed systems. Check for data exfiltration before encryption (double extortion - look for unusual outbound HTTPS transfers). Determine if backup systems were reached. Initiate GDPR/regulatory breach assessment given patient data likely involved.

---

**Q2.2 - Threat Intelligence Operationalization**

ISAC partner shares: malicious domain "updates-bankingportal[.]net", SHA-256 hash "3a4b...c9f2", and TTPs - scheduled tasks named "MicrosoftEdgeUpdateTaskMachineUA" + PowerShell download cradles for stage-2 payloads.

(a) Classify each indicator using the Pyramid of Pain. Which provides most durable detection value? (2 marks)
(b) How would you operationalize these indicators in a SOC? (3 marks)

MODEL ANSWER:

(a) Pyramid of Pain Classification (2 marks):
- Domain: Domain Name level (lower-middle). Easy to replace - register new domain in minutes. Low durability.
- SHA-256 Hash: Hash level (bottom). Trivially changed by modifying one byte. Minimal durability.
- Scheduled task name + PowerShell technique: TTP LEVEL (TOP) - MOST DURABLE. Changing TTPs requires developing entirely new tools and procedures - high attacker cost. Detection fires even after IOC rotation.

(b) Operationalization (1 mark each):

1. DEPLOY ATOMIC IOCs IMMEDIATELY: Block domain in DNS blacklist/web proxy. Add SHA-256 hash to EDR and SIEM for detection/blocking on execution. Provides immediate protection within minutes.

2. BUILD TTP-BASED DETECTION RULES: SIEM rule - alert when scheduled task creation (Event ID 4698) matching "MicrosoftEdgeUpdateTask*" occurs AND PowerShell with download parameters (IEX, DownloadString, WebClient, -EncodedCommand) executes within the same session. Detects attacker even after IOC rotation.

3. RETROACTIVE THREAT HUNT: Search 90 days of SIEM/EDR historical data for the malicious domain in DNS/proxy logs, file hash executions, scheduled task naming pattern, and PowerShell download cradle command lines. Determines if organization was already compromised before receiving intelligence.

---

**Q2.3 - Cloud Misconfiguration**

AWS review finds S3 bucket "company-hr-records-2024" publicly accessible with 15,000 employee records (salary, passport scans). CloudTrail shows it was made public 3 weeks ago by a developer's IAM account - the developer left 2 months ago.

(a) Identify THREE security failures. (2 marks)
(b) Immediate response actions and regulatory obligations. (3 marks)

MODEL ANSWER:

(a) Three Failures (approx 0.67 marks each):

1. FAILED OFFBOARDING: IAM account remained active 2+ months after employee departure. Proper offboarding requires same-day account deactivation.

2. NO S3 BLOCK PUBLIC ACCESS: AWS account-level Block Public Access would have prevented ANY bucket from being made public regardless of individual IAM action. Not configured.

3. NO CSPM/CONTINUOUS MONITORING: Public S3 bucket containing sensitive PII went undetected for 3 weeks. AWS Config rule "s3-bucket-public-read-prohibited" or a CSPM tool would have flagged this in near-real-time.

(b) Response and Obligations (3 marks):

IMMEDIATE RESPONSE (2 marks):
- Enable S3 Block Public Access on bucket and at account level immediately
- Disable former developer's IAM account; rotate all associated access keys
- Analyze CloudTrail S3 GetObject API calls during the 3-week exposure window - determine if/how much data was accessed by unauthorized parties
- Preserve CloudTrail logs to immutable storage as evidence
- Notify CISO and legal counsel; initiate formal incident investigation

REGULATORY OBLIGATION (1 mark): Under UK GDPR, passport scans and salary information constitute personal data. A 3-week exposure of 15,000 records is a reportable breach. Northgate must notify the ICO within 72 HOURS of becoming aware. If there is high risk of harm to individuals (passport scans = identity theft risk), affected employees must be directly notified without undue delay.

---

**Q2.4 - Business Email Compromise**

CFO receives email from "ceo@acme-manufacturing.net" (real domain is .com) urgently requesting GBP850,000 wire transfer. Email says CEO is in a meeting and cannot be reached by phone. Wire is completed. Money is gone.

(a) Identify attack type, social engineering principles exploited, and technical spoofing method. (3 marks)
(b) FOUR controls that would have prevented or detected this. (2 marks)

MODEL ANSWER:

(a) (1 mark each):

ATTACK TYPE: Business Email Compromise (BEC) - CEO fraud/whaling. Financially motivated social engineering attack impersonating the CEO to trigger unauthorized wire transfer. No malware - pure psychological manipulation.

SOCIAL ENGINEERING PRINCIPLES:
- Authority: CEO carries ultimate organizational authority - CFO complies to avoid conflict.
- Urgency: "Urgently" creates time pressure, bypassing normal verification procedures.
- Isolation: "Cannot be reached by phone" pre-emptively blocks the most obvious verification method.

TECHNICAL SPOOFING: Typosquatting/lookalike domain - attacker registered "acme-manufacturing.net" vs legitimate ".com". Since the attacker controls the .net domain, DMARC on the legitimate .com domain provides no protection. Attacker configures valid SPF/DKIM on their .net domain, passing email authentication checks.

(b) Four Controls (0.5 each):

1. OUT-OF-BAND PHONE VERIFICATION POLICY: Mandatory call to a pre-registered executive number (not one provided in the email) to approve any wire transfer above GBP5,000. No transfer approved on email instruction alone.

2. DUAL-APPROVAL / FOUR-EYES CONTROL: Two independent senior approvers required for large transfers. No single individual can authorize above a set threshold alone.

3. EXTERNAL EMAIL WARNING BANNERS: Visible tag on all externally originated emails: "CAUTION: External Email - Verify sender identity before taking financial action." Would have flagged the email as external, prompting domain inspection.

4. LOOKALIKE DOMAIN MONITORING: Subscribe to a domain monitoring service alerting on newly registered typosquatting domains of the company brand - enabling pre-emptive blocking before attacks launch.

---

**Q2.5 - SIEM Alert Correlation**

Within 20 minutes on WKSTN-042 (user: jsmith): (1) PowerShell -EncodedCommand, (2) DNS query to 2-day-old domain "xn--80ak6aa92e.com", (3) Outbound port 443 to Tor exit node, (4) New scheduled task "WindowsDefenderUpdate", (5) certutil.exe -decode flag.

(a) Correlate alerts and identify the attack scenario. (3 marks)
(b) Immediate Tier 2 response actions. (2 marks)

MODEL ANSWER:

(a) Correlation (0.5 per alert + 0.5 overall = 3 marks):

Reading as sequential attack chain:
- certutil -decode: Initial payload decoding - LOLBin used to decode base64-encoded dropper delivered via phishing. Suggests initial payload execution/dropper stage.
- PowerShell -EncodedCommand: Obfuscated stage-2 execution - likely a download cradle retrieving C2 implant from attacker infrastructure, evading basic command-line logging.
- DNS to 2-day-old domain: C2 establishment - newly registered, obfuscated Punycode domain is classic malicious infrastructure set up recently to avoid reputation-based blocking.
- Port 443 to Tor exit node: C2 via Tor - routes C2 traffic anonymously through Tor; port 443 used to blend with legitimate HTTPS traffic.
- Scheduled task "WindowsDefenderUpdate": Persistence established - masquerades as legitimate Microsoft process to survive reboots. System is now persistently backdoored.

OVERALL: High-confidence active malware infection. C2 channel is live. Persistence is established. Genuine P1/P2 incident - immediate response required, not a false positive.

(b) Tier 2 Response (1 mark each):

1. ISOLATE WKSTN-042 VIA EDR IMMEDIATELY: Sever network connectivity (maintain EDR management channel) to cut the live C2 channel and prevent lateral movement or data exfiltration. Document isolation time. Trigger EDR memory dump and forensic artifact collection before any remediation action.

2. SCOPE AND ESCALATE: Search SIEM for all jsmith account and WKSTN-042 activity over past 72 hours - lateral movement (logons to other systems), additional C2 infrastructure, data staging. Block identified IOCs (domain, Tor exit node IP) at firewall and DNS layer. Raise P1/P2 incident ticket, brief incident commander, escalate to Tier 3 if lateral movement confirmed on other systems.

---

## SECTION C - CASE STUDY (15 Marks)

CASE STUDY: "The Northgate Financial Breach"

Northgate Financial Services is a mid-sized UK/EU investment bank (3,200 employees). In March 2024, a penetration test firm discovered evidence of a pre-existing compromise.

TIMELINE:
- Nov 2023: M&A division employee received spear phishing email with malicious Word document exploiting CVE-2023-XXXX (patched by Microsoft October 2023, but unapplied on 60% of Northgate endpoints). Employee opened document; Cobalt Strike beacon installed.
- Nov 2023 - Feb 2024 (92 days): APT group "FIN-7 variant" operated inside Northgate. Activities: stole AD credentials via Mimikatz; laterally moved to 14 workstations + 3 servers; accessed M&A deal room SharePoint (MNPI on GBP2.3B pending acquisitions); exfiltrated ~47GB via encrypted HTTPS to cloud storage.
- SIEM generated 3 alerts over 92 days - all closed as false positives by Tier 1 analysts.

Security state at discovery: No DMARC enforcement; Office macros enabled by default; October 2023 patch unapplied on 60% of endpoints; SharePoint deal room: no MFA, no additional access controls.

Regulatory context: EU client personal data (GDPR); MNPI on GBP2.3B M&A deals (market abuse risk); FCA-regulated firm.

---

**Q3.1** Conduct a comprehensive analysis of the security failures that enabled this breach. For each failure state: (i) security domain, (ii) control gap, (iii) impact of that gap. (7 marks)

MODEL ANSWER:

FAILURE 1 - PATCH MANAGEMENT (1 mark)
Domain: Vulnerability Management
Gap: CVE-2023-XXXX was available October 2023; 60% of endpoints remained unpatched 4+ weeks later. Critical/High SLA should be 7-14 days.
Impact: Direct initial access vector. Unpatched Office allowed malicious macro to execute and install Cobalt Strike. Timely patching eliminates this entire attack path.

FAILURE 2 - EMAIL SECURITY (1 mark)
Domain: Email Security / Perimeter Defence
Gap: No DMARC enforcement and no attachment sandboxing capable of detecting malicious macros before delivery.
Impact: Spear phishing email reached inbox unchallenged. Sandboxing would have detonated the document safely and blocked delivery; DMARC prevents exact-domain spoofing.

FAILURE 3 - ENDPOINT APPLICATION HARDENING (1 mark)
Domain: Endpoint Security
Gap: Office macros enabled by default organization-wide. Best practice: disable macros by default; permit only digitally signed macros from approved publishers.
Impact: Even without the patch, disabling macros prevents code execution from the malicious document. Employee could have opened the file without triggering the exploit.

FAILURE 4 - SECURITY MONITORING / SIEM DETECTION (1.5 marks)
Domain: Security Operations
Gap: SIEM generated only 3 alerts across 92 days of APT activity involving Cobalt Strike C2 beaconing, Mimikatz credential dumping, lateral movement across 17 systems, and 47GB exfiltration. All 3 were closed as false positives - indicating severe detection rule gaps, poor analyst training, and/or alert fatigue from excessive noise.
Impact: 92-day dwell time. Attacker completed all objectives including full data exfiltration. Proper detection engineering for Cobalt Strike patterns, credential dumping, lateral movement, and bulk uploads would have dramatically shortened dwell time.

FAILURE 5 - IDENTITY AND ACCESS MANAGEMENT (1 mark)
Domain: IAM / Access Control
Gap: M&A deal room SharePoint - the most sensitive repository - had no MFA and no privileged access controls beyond standard username/password. No anomaly detection for the deal room.
Impact: Mimikatz-extracted credentials provided unrestricted deal room access. MFA alone prevents credential-only access. Monitoring for off-hours bulk downloads would have detected exfiltration.

FAILURE 6 - NETWORK SEGMENTATION (0.5 marks)
Domain: Network Security
Gap: Attacker moved from one compromised workstation to 14 workstations and 3 servers with no network controls impeding east-west movement.
Impact: Breach was initially on one machine. Proper microsegmentation would have contained it there, preventing the full scope of credential theft and deal room access.

FAILURE 7 - DATA LOSS PREVENTION (1 mark)
Domain: Data Protection
Gap: 47GB exfiltrated over encrypted HTTPS with no DLP controls detecting or blocking the bulk upload. No monitoring of bulk downloads from the deal room either.
Impact: Even if all other controls failed, DLP monitoring bulk uploads to external cloud storage could have detected and blocked exfiltration, limiting damage to access/viewing only rather than confirmed data theft.

(Award 7 marks total - proportionally for quality and completeness)

---

**Q3.2** As CISO, prepare a structured response covering: (a) immediate IR priorities, (b) regulatory notification obligations, (c) strategic long-term improvements to prevent recurrence. (8 marks)

MODEL ANSWER:

(a) IMMEDIATE INCIDENT RESPONSE PRIORITIES (3 marks)

HOUR 0-4: CRISIS DECLARATION AND CONTAINMENT (1 mark)
Declare P1 Critical Incident; convene IR team (technical lead, legal, comms, exec sponsor); designate Incident Commander.
Emergency technical actions:
- EDR-isolate all 17 identified compromised systems immediately
- Force organization-wide AD password reset - Mimikatz had 92 days of credential access
- Block all identified Cobalt Strike C2 infrastructure at perimeter firewall
- Emergency MFA enforcement on M&A SharePoint and all privileged access paths

HOUR 4-48: SCOPE, EVIDENCE AND ERADICATION (1 mark)
- Engage specialist APT incident response firm immediately (nation-state calibre attack)
- Forensically image all 17 compromised systems before ANY remediation
- Audit complete SharePoint deal room access logs across full 92-day window - every document accessed, downloaded, by which account
- Full environment-wide threat hunt for additional Cobalt Strike implants, attacker-created accounts, and persistence mechanisms
- Eradicate only after confirming complete scope: rebuild from gold images, remove all persistence, apply patch

RECOVERY WEEKS 1-4 (1 mark)
- Rebuild all compromised systems from verified clean OS images (not clean-in-place attempts)
- Deploy October 2023 patch to ALL remaining unpatched endpoints before reconnecting
- Enhanced SIEM monitoring with detection rules developed from attacker TTPs observed during forensics
- Phased reconnection with validated-clean verification; elevated monitoring for 90 days post-eradication


(b) REGULATORY NOTIFICATION OBLIGATIONS (2 marks)

GDPR (UK GDPR / EU GDPR) (1 mark):
The 47GB exfiltration almost certainly includes personal data of EU clients. Under GDPR Article 33, Northgate must notify the ICO (UK) and relevant EU DPAs WITHIN 72 HOURS of becoming aware. Notification must include: nature of breach; categories and approximate number of affected individuals and records; DPO contact details; likely consequences; remediation measures taken. If individuals face high risk of harm (identity theft), Article 34 requires direct individual notification without undue delay. The 72-hour clock runs from when the organization "became aware" - Northgate must document this to establish the legal timeline.

FCA AND MARKET ABUSE REGULATION (1 mark):
As an FCA-regulated firm, Northgate must notify the FCA of this material operational incident promptly. Critically: the exfiltrated data contains MNPI on GBP2.3B in pending M&A transactions. Under UK MAR, if any party traded on this information during the 92-day exposure window, this constitutes insider dealing - a criminal offence. Legal counsel must immediately assess MAR obligations, preserve evidence relevant to any potential trading on MNPI, and coordinate FCA engagement. Northgate must also assess contractual and ethical obligations to notify deal counterparties whose confidential information was compromised.


(c) STRATEGIC LONG-TERM IMPROVEMENTS (3 marks - proportional)

1. RISK-BASED PATCH MANAGEMENT (0.5 marks): Automated patch management (SCCM/Intune) with SLAs: Critical patches within 72 hours (CISA KEV items), High within 14 days. Board-level KPI tracking; target >98% compliance within SLA. No exceptions without documented compensating controls and sign-off.

2. EMAIL SECURITY AND MACRO HARDENING (0.5 marks): DMARC "reject" enforcement. Advanced email gateway with attachment sandboxing. Disable Office macros by default via Group Policy; permit only digitally signed macros from approved publishers. Quarterly phishing simulations with targeted training for M&A, Finance, and C-suite.

3. SOC TRANSFORMATION - DETECTION ENGINEERING (0.5 marks): Full MITRE ATT&CK coverage assessment - map detection rules to ATT&CK matrix, identify gaps. Develop rules for: Cobalt Strike beaconing signatures, Mimikatz LSASS access patterns, LOLBin abuse, workstation-to-workstation lateral movement (Event 4624 Type 3), bulk HTTPS uploads. Implement SOAR for automated triage. QA process for all Tier 1 false positive closures reviewed by Tier 2.

4. ZERO TRUST IDENTITY AND CROWN-JEWEL PROTECTION (0.5 marks): Mandate phishing-resistant MFA (FIDO2) for all sensitive system and privileged account access. PAM with JIT privileged access. Least privilege enforced on all accounts. M&A deal room: MFA-enforced, need-to-know with approval workflow, full audit logging, dedicated SIEM alerting for anomalous access, DLP blocking bulk downloads.

5. NETWORK SEGMENTATION (0.5 marks): Microsegmentation blocking workstation-to-workstation communication by default. Legitimate admin traffic via PAW/jump server only. NDR/Zeek for east-west traffic monitoring and lateral movement detection. M&A network in dedicated VLAN with strict access controls.

6. THREAT INTELLIGENCE AND PROACTIVE HUNTING (0.5 marks): FS-ISAC subscription for financial sector threat intel. Dedicated threat hunting function (Tier 3 analysts with dedicated time). Quarterly purple team exercises testing against FIN-7 and similar APT TTPs. Annual red team exercise and external penetration test.

(Total: 8 marks - award proportionally; full marks require all three components with specific, actionable, realistic recommendations)

---

END OF EXAMINATION PAPER

Key exam tips: Always relate technical controls to business impact. Use frameworks (NIST, MITRE ATT&CK, ISO 27001) to structure answers. In scenario questions: Identify then Analyse then Recommend. Suggested time: Section A = 40 min | Section B = 75 min | Section C = 65 min.
