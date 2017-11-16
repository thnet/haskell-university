module Main where

main :: IO ()
main = do
  putStrLn "hello world"

--Author: Timo Holm


--    To store information about all summer employees of working in a deli.
--The company is mainly interested in where to send the paychecks and how much money should be paid.
--The pay is calculated according to the number of sandwiches sold.
type SocialSecNumber = [Char]
type SandwichesSold=Int
type SalaryPerSandWich =Int
type PayCheckAddress = [Char]
data Employee = Employee SocialSecNumber SandwichesSold SalaryPerSandWich PayCheckAddress

--Example of sandwiches sold
emp1::Employee
emp1 = Employee "1111-AAA" 110 1 "Street a"

--    Representing the location of the ice cream booths that the company owns.
--The company needs to know where the booth currently is and the phone number of the employee currently manning the booth (if any).
type CurrentLocation = [Char]
type PhoneNumber = [Char]
data Booth = BoothWithEmployee CurrentLocation PhoneNumber | BoothWithoutEmployee CurrentLocation

booth1::Booth
booth1= BoothWithEmployee "Jyväskylä" "12345678"

booth2::Booth
booth2 = BoothWithoutEmployee "Jyväskylä"

--    How would the company store an employee address? (Think about when you've ordered something online. Which fields are there?)
type StreetAddress=[Char]
type ZipCode =[Char]
type City=[Char]
type Country=[Char]
data Address = Address StreetAddress ZipCode City Country

-- Example of employee address
address1::Address
address1 = Address "Street A" "10100" "Helsinki" "Finland"

--    A return value for a function that extracts the protocol part of an URL string.
data Protocol = Http | Https | Ftp


-- Example of function protocol
protocol1::Protocol
protocol1 = Http

-- --   You are designing a multipurpose function for out addresses on the company paychecks.
--Some bigwigs of the company have a specific salutation, such as CEO. or Dr. that must be prepended to their name.
-- Which types would you use as a parameter?
type Title = [Char]
type FirstName = [Char]
type LastName = [Char]
data FullName = Title FirstName LastName
type SalaryForPaymentPeriod = Double
type TaxRate = Double
data SalaryType =Hourly | Montly
data PayCheck = PayCheck FullName SalaryForPaymentPeriod TaxRate SalaryType

-- Example of Multipurpose funktion
-- CEO John Smith 100000 50 Monthly
-- James Smith 50000 20 Monthly
