for $x in doc("bookstore.xml")/bookstore/book/year
let $x := ($x)
return <publicacion><year>{data($x)}</year></publicacion>