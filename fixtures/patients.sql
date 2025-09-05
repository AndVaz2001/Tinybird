SELECT
    now() - rand() % (365 * 86400) AS created_at,
    if(rand() % 2 = 0, now() - rand() % (30 * 86400), NULL) AS updated_at,
    concat('PAT', toString(1 + rand() % 10)) AS patient_id,
    if(rand() % 2 = 0, concat('CLIN', toString(1 + rand() % 10)), NULL) AS clinic_id,
    if(rand() % 2 = 0, ['Web', 'Mobile', 'Phone', 'Walk-in'][rand() % 4 + 1], NULL) AS origin,
    if(rand() % 2 = 0, ['Mr.', 'Mrs.', 'Dr.', 'Ms.'][rand() % 4 + 1], NULL) AS prefix,
    if(rand() % 2 = 0, ['Referral', 'Advertisement', 'Website', 'Insurance'][rand() % 4 + 1], NULL) AS source,
    rand() % 2 = 1 AS status,
    if(rand() % 2 = 0, now() - rand() % (60 * 86400), NULL) AS status_updated_at,
    if(rand() % 2 = 0, ['Moved', 'Deceased', 'Transferred', 'Inactive'][rand() % 4 + 1], NULL) AS deactivation_reason,
    if(rand() % 2 = 0, concat('USR', toString(1 + rand() % 10)), NULL) AS created_by,
    if(rand() % 2 = 0, concat('USR', toString(1 + rand() % 10)), NULL) AS updated_by,
    if(rand() % 2 = 0, ['Update', 'Creation', 'Deactivation', 'StatusChange'][rand() % 4 + 1], NULL) AS updated_by_event,
    concat('WU', toString(1 + rand() % 10)) AS work_unit_id,
    concat('CLI', toString(1 + rand() % 10)) AS client_id,
    now() - rand() % (7 * 86400) AS inserted_at,
    if(rand() % 2 = 0, ['Long absence', 'Patient request', 'Insurance change', 'Other reason'][rand() % 4 + 1], NULL) AS deactivation_reason_specification
FROM numbers(10)
