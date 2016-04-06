json.array! @doctors.each do |doctor|
  json.partial! 'doctor.json.jbuilder', doctor: doctor
end