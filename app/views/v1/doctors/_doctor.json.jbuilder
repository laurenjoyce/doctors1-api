json.id doctor.id
json.firstName doctor.first_name 
json.lastName doctor.last_name
json.fullNmae doctor.full_name
json.practice doctor.practice
json.university doctor.university
json.addresses doctor.addresses do |address|
  json.address1 address.address_1
  json.address2 address.address_2
end