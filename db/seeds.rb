5.times do |n|
 Company.create name: "Company#{n}", established_at: DateTime.now
end

10.times do |n|
  Department.create name: "Demo Department #{n}", location: "Location #{n}", company_id: Company.first.id if n%2 === 0
  Department.create name: "Demo Department #{n}", location: "Location #{n}", company_id: Company.last.id if n%2 != 0
end

10.times do |n|
  Project.create name: "Test Project #{n}", department_id: Department.first.id if n%2 === 0
  Project.create name: "Test Project #{n}", department_id: Department.last.id if n%2 != 0
end

10.times do |n|
  if((n%2) == 0)
    Employee.create! name: "Employee #{n}", email: "test#{n}@test.com", department_id: Department.first.id,
      company_id: Company.first.id, age: 20, gender: 1, project_id: Project.first.id, country: "Country #{n}",
      city: "City #{n}", zipcode: "demo code #{n}", password: "111", password_confirmation: "111"
  end
end
