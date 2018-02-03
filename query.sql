use 0wall;

select * from users
;
select * from messages
;
select * from comments
;

select m.id, concat(u.first_name,'  ',u.last_name) as name, m.message, m.created_at 
from messages m
join users u on m.user_id = u.id
order by m.created_at desc
;

select *
from messages m
join users u on m.user_id = u.id
;

select *
from comments c
left join messages m on c.message_id = m.id
;

select tblcomments.comment, tblusers.first_name 
from tblcomments left join tblusers on tblcomments.user_id = tblusers.id WHERE tblcomments.message_id = :m_id;"