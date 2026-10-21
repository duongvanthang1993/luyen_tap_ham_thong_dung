use QuanLySinhVien1;



select *
from subject
where Credit >=all(
select Credit
from subject
);


select Sub.*, M.Mark as 'diem thi lon nhat'
from subject Sub
join mark M on Sub.SubId = M.SubId
where M.Mark>=all(
select Mark
from mark
);

select S.StudentId,S.StudentName,S.Address,S.Phone,S.Status,S.ClassId, avg(M.mark) as 'diem trung binh'
from student S 
left join mark M on S.StudentId =M.StudentId
group by S.StudentId,S.StudentName,S.Address,S.Phone,S.Status,S.ClassId
order by 'diem trung binh' desc