for $x in doc("bookstore.xml")/bookstore/book/year
where $x
return <publicacion><year>{data($x)}</year></publicacion>
