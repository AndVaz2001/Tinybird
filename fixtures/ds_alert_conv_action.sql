SELECT
    concat('conv_', toString(rand() % 10000)) AS conversation_id,
    arrayElement(['Malware Detected', 'Suspicious Activity', 'Unauthorized Access', 'Data Exfiltration', 'Brute Force Attack'], rand() % 5 + 1) AS alert_name,
    arrayElement(['Critical', 'High', 'Medium', 'Low', 'Info'], rand() % 5 + 1) AS severity,
    arrayElement(['Blocked', 'Quarantined', 'Alerted', 'Monitored', 'Logged'], rand() % 5 + 1) AS action_display,
    toDateTime('2025-07-24') - rand() % (30*24*60*60) AS started_at,
    arrayElement(['HTTP', 'HTTPS', 'SSH', 'FTP', 'DNS', 'SMTP', 'RDP', 'SMB', NULL], rand() % 9 + 1) AS protocol_name
FROM numbers(10)