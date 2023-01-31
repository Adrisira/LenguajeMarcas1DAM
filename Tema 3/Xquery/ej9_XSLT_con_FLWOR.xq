<html>
  <title>
      Libros
  </title>
  <body>
    <h1>Libros</h1>
    {
    for $x in /libros/distinct-values(libro/autor)
      return 
         <p>
           <h1>{data($x)}</h1>
           <table border="1px solid black">            
             { 
                for $y in /libros/libro[autor=$x]
                return <tr><td>{data($y/titulo)}</td></tr>
             }           
           </table>    
         </p>     

    }
</body>
</html>