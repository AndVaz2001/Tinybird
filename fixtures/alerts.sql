SELECT
    concat('ALERT', toString(1 + rand() % 10)) AS alert_id,
    case when rand() % 10 > 2 then concat('Alert_', toString(1 + rand() % 5)) else NULL end AS alert_name,
    case when rand() % 10 > 2 then concat('FLOW', toString(1 + rand() % 10)) else NULL end AS flow_id,
    case when rand() % 10 > 2 then concat('Flow_', toString(1 + rand() % 5), '_name') else NULL end AS flow_name,
    concat('CONV', toString(1 + rand() % 10)) AS conversation_id,
    case when rand() % 10 > 2 then ['Low', 'Medium', 'High', 'Critical'][(rand() % 4) + 1] else NULL end AS severity,
    parseDateTimeBestEffort('2025-07-23') - interval (rand() % 30) day - interval (rand() % 24) hour - interval (rand() % 60) minute AS created_at,
    concat('WORK', toString(1 + rand() % 10)) AS work_unit_id,
    parseDateTimeBestEffort('2025-07-23') - interval (rand() % 15) day - interval (rand() % 24) hour - interval (rand() % 60) minute AS inserted_at
FROM numbers(10)