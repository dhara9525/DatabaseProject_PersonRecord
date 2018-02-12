-- Query 1: Display people and their phone numbers

Select *
From Persons as a
left join PhoneNumbers as b 
on a.PersonID=b.PersonID

-- Query 2 : Display people and their addresses
  
Select *
From Persons as a
left join Address as b 
on a.PersonID=b.PersonID

-- Query 3 : Display people and their addresses only if they are in the state of California

Select Persons.FirstName, Persons.LastName, Persons.Age,
Address.StreetAddress, Address.State 
from Persons
left join Address 
ON Persons.PersonID=Address.PersonID 
and  Address.State='CA' 

-- Query 4 : Show how many people have addresses in each state

Select  Persons.FirstName 
from Persons 
inner join Address 
on Persons.PersonID=Address.PersonID
group by Persons.FirstName
Having count( distinct Address.State)=count(distinct Persons.PersonID)

-- Query 5 : Show the % of people that have multiple addresses

Select (count(distinct Address.PersonID)/
        (Select count(distinct Persons.PersonID)
          from Persons)
       )*100 as PercentageVaulue 
from Address