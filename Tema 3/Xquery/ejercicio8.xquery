 <html>
      <body>
      <h1>Libros</h1>
        <table border="1">
          <tr>
            <th style="text-align:left">Titulo</th>
            <th style="text-align:left">Autor</th>
            <th style="text-align:left">Precio</th>
          </tr>
          <tr>
            {
              for $x in doc("libros.xml")/libros/libro
              return<tr>
              <td>{$x/titulo/string()}</td>
              <td>{$x/autor/string()}</td>
               <td>{$x/precio/string()}</td>
              </tr>  
            }
          </tr>
        </table>
       </body>
</html>