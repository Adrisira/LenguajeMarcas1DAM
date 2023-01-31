for $x in doc("bookstore.xml")/bookstore/book
where $x/year = 2005
return <lib2005>{data($x/title)}</lib2005>

