for $x in doc("bookstore.xml")/bookstore/book
where $x/price<=30
return $x

