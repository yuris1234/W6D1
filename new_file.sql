-- employees, departments
-- employees belongs to departments,
-- departments has many employees

name = ""
SELECT name
from employees
join departments on employees.department_id = departments.id
where departments.name = ?

select name
from employees e
left join departments d on e.department_id = d.id
where e.department_id is null



appointments

    belongs_to :physician,
        class_name 'Physician',
        foreign_key: :physician_id,
        primary_key: :id
    
    belongs_to :patient,
        class_name: 'Patient',
        foreign_key: :patient_id,
        primary_key: :id

patient
    has_many :appointments,
        class_name: 'Appointment',
        foreign_key: :patient_id,
        primary_key: :id

    belongs_to :primary_care_physician,
        class_name: 'Physician',
        foreign_key: :primary_physician_id,
        primary_key: :id

physician
    has_many :appointments,
        class_name: 'Appointment',
        foreign_key: :physician_id,
        primary_key: :id

    has_many :patients,
        through: :appointments,
        source: :patient

    has_many :primary_patients,
        through: :patients,
        source: :primary_care_physican


select *
from movies m
join castings c on c.movie_id = m.id
join actors a on c.actor_id = a.id
where a.name = "Harrison Ford" and c.ord !=1

select name
from actors a
join castings c on c.actor_id = a.id
where c.ord = 1
group by a.id
having count(a.id) >=15
order by name 
