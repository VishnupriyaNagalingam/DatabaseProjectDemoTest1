-- This file contains SQL statements that will be executed after the build script.
Update Tasks set TaskSource=Case when TaskStatus='Completed' then 'BPM' else 'Flightdeck ' END
