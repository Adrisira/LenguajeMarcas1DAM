for $x in doc("bookstore.xml")/bookstore/book
order by $x/@category, $x/title
return $x/author