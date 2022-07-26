__Exericío 01:
Select users.id as id,users.name as name, cities.name AS city FROM users JOIN cities ON cities.id=users."cityId" WHERE cities.name='Rio de Janeiro';

__Exericío 02:
SELECT testimonials.id as id,testimonials."writerId" as writer,testimonials."recipientId" as recipient,testimonials.message as message FROM testimonials JOIN users u1 ON u1.id=testimonials."writerId" JOIN users u2  ON u2.id=testimonials."recipientId";

__Exericío 03:
SELECT users.id as id,users.name as name,courses.name as course,schools.name as school,educations."endDate" as "endDate" FROM educations JOIN users ON users.id=educations."userId" JOIN courses ON courses.id=educations."courseId" JOIN schools ON schools.id=educations."schoolId" WHERE educations.status='finished' AND users.id=30;

__Exericío 04:
SELECT users.id as id, users.name as name,roles.name as role, companies.name as company,experiences."startDate" as "startDate" FROM experiences JOIN users ON users.id=experiences."userId" JOIN roles ON roles.id=experiences."roleId" JOIN companies ON companies.id=experiences."companyId" WHERE users.id=50 AND experiences."endDate" IS NULL;

__BÔNUS:
SELECT schools.id as id,schools.name as school, courses.name as course,companies.name as company, roles.name as role FROM applicants JOIN educations ON educations."userId"=applicants."userId" JOIN schools ON schools.id=educations."schoolId" JOIN courses ON courses.id=educations."courseId" JOIN jobs ON jobs.id=applicants."jobId" JOIN companies ON companies.id=jobs."companyId" JOIN roles ON roles.id=jobs."roleId" WHERE roles.name='Software Engineer' AND companies.id=10 AND jobs.active='true';