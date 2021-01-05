select * from all_users;
select * from v$active_session_history where session_type = 'FOREGROUND' and user_id=136 and sample_time between timestamp '2020-09-09 15:47:25.443000000' and timestamp '2020-09-09 16:17:25.443000000' order by sample_time;


select count(s.sid) sessions, sum(a.value) total_cursors, max(a.value) max_cursors, s.username, s.machine
from v$sesstat a, v$statname b, v$session s
where a.statistic# = b.statistic#
  and s.sid=a.sid
  and b.name = 'opened cursors current'
group by s.username, s.machine
order by username desc;

select resource_name, current_utilization, max_utilization, limit_value
from v$resource_limit
where resource_name in ('sessions', 'processes');