SELECT
    concat('ACT', toString(1 + rand() % 10)) AS action_id,
    concat('CONV', toString(1 + rand() % 10)) AS conversation_id,
    multiIf(rand() % 10 > 7, NULL, concat('CP', toString(1 + rand() % 10))) AS care_plan_id,
    concat('PAT', toString(1 + rand() % 10)) AS patient_id,
    multiIf(rand() % 10 > 7, NULL, concat('Action ', toString(1 + rand() % 5))) AS action_name,
    concat('Display Action ', toString(1 + rand() % 5)) AS action_display,
    ['Assessment', 'Treatment', 'Monitoring', 'Education', 'Follow-up'][rand() % 5 + 1] AS action_category,
    rand() % 2 = 1 AS is_active,
    multiIf(rand() % 10 > 7, NULL, round(rand() * 100, 2)) AS action_code,
    ['System', 'Manual', 'Integration', 'API'][rand() % 4 + 1] AS source,
    multiIf(rand() % 10 > 7, NULL, concat('PRACT', toString(1 + rand() % 10))) AS practitioner_id,
    now() - rand() % (30*86400) AS created_at,
    concat('CLIENT', toString(1 + rand() % 10)) AS client_id,
    concat('WU', toString(1 + rand() % 10)) AS work_unit_id,
    now() - rand() % (15*86400) AS inserted_at
FROM numbers(10)