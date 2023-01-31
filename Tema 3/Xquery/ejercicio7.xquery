let $x := /count(doc("bookstore.xml")/bookstore/book)
return <total>{data($x)}</total>