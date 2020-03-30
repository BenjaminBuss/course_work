SELECT COUNT(*), date(datestamp) AS day 
FROM contact_lead 
WHERE datestamp >= '2020-01-01' AND contact_id NOT IN (SELECT contact_id FROM contacts WHERE brand_id = 44) 
GROUP BY day