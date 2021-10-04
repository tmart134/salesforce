

dumps all the jobs but does not seem to include all the jobs

Select ApexClass.Name, Id, ExtendedStatus, CreatedDate, CompletedDate, JobItemsProcessed, JobType, LastProcessed, LastProcessedOffset, MethodName, NumberOfErrors, Status from AsyncApexJob

Returns 1 for one job if job is scheduled to run SELECT COUNT() FROM CronTrigger WHERE CronJobDetail.Name LIKE 'Stella Connect Request Sender%' AND NextFireTime != null

08e0f00001U3wXDAAZ Stella connect request sender ID from CronTrigger

SELECT Id, CronJobDetail.Name, CronJobDetail.JobType, TimesTriggered, NextFireTime FROM CronTrigger

SELECT Id, CronJobDetail.Name, TimesTriggered, NextFireTime FROM CronTrigger

SELECT Id, CronJobDetail.Name, NextFireTime, PreviousFireTime, State, StartTime, EndTime, CronExpression, TimeZoneSidKey, OwnerId, LastModifiedById, CreatedById, CreatedDate, TimesTriggered FROM CronTrigger
