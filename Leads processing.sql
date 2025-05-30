#Task 1: Show all leads from Singapore
select name, email, company, country
from `sales-sql-lab.dummy_leads.analysis`
where lower(country) like '%singapore%';

#Task 2: Filter hot leads only
select name, email, company, country, rating
from `sales-sql-lab.dummy_leads.analysis`
where lower(rating) = 'hot';

#Task 3: Leads by source type
select source, count(*) as total_leads
from `sales-sql-lab.dummy_leads.analysis`
group by source
order by total_leads desc;

#Task 4: Find corporate job titles
select name, email, job_title
from `sales-sql-lab.dummy_leads.analysis`
where lower(job_title) like '%director%' or lower(job_title) like '%manager%';

#Learn to group, countr, and summarize data
#turn raw leads into insights

#Task 5: Count of Leads by Country
#To get insight how to arrange resources for each location
select country, count(*) as total_leads
from `sales-sql-lab.dummy_leads.analysis`
group by country
order by total_leads desc;

#Task 6: Count of Leads by Source
#To identify which marketing channel performs better
select source, count(*) as lead_count
from `sales-sql-lab.dummy_leads.analysis`
group by source
order by lead_count desc;

#Task 7: Count of Leads by Rating
#Determine the lead quality
select rating, count(*) as rating_count
from `sales-sql-lab.dummy_leads.analysis`
group by rating
order by rating_count desc;