 <html>
      <body>
      <h1>Libros</h1>
      <h2>Alejandro Dumas</h2>
      <table border="1">
          <tr>
            {
              for $x in doc("libros.xml")/libros/libro
              where $x /autor = "Alejandro Dumas"
              return<tr>
              <td>{$x/titulo/string()}</td>
              </tr>  
            }
          </tr>
        </table>
      <h2>Julio Cortázar</h2>
        <table border="1">
          <tr>
            {
              for $x in doc("libros.xml")/libros/libro
              where $x /autor = "Julio Cortázar"
              return<tr>
              <td>{$x/titulo/string()}</td>
              </tr>  
            }
          </tr>
        </table>
       </body>
</html>