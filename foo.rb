require 'csv'
SOME_TEMPLATE = """
Dear %s %s <%s>,

We are happy to inform you that lorem ipsum.
lorem ipsum
lorem lorem lorem! Please come by on %s

Sincerely,
Acme University
---


"""
rows = CSV.foreach("./test.csv", headers: true)
rows.each do |r|
  txt = SOME_TEMPLATE % [r['first_name'], r['last_name'], r['email'], r['date']]
  puts txt
end
