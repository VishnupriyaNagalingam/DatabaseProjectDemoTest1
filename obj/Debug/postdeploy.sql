-- This file contains SQL statements that will be executed after the build script.
Update Tasks set TaskName= case when TaskSource='BPM' then 'ASR' else 'Asrs' end
GO
