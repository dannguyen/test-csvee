require 'csv'
SOME_TEMPLATE = """
%s
Dear %s %s <%s>,

We are happy to inform you that lorem ipsum.
lorem ipsum
lorem lorem lorem!

Sincerely,
Acme University
---


"""
rows = CSV.foreach("./test.csv", headers: true)
rows.each do |r|
  txt = SOME_TEMPLATE % [r['date'], r['first_name'], r['last_name'], r['email']]
  puts txt
end
