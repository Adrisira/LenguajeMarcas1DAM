<html>
  <head><tilte>Examen</tilte></head>
  <body>
    <h1>Listado de bebidas SIN CAFEINA</h1>
      {
       for $x in doc("franquicia_v2.xml")/franquicia/bebidas/bebida
        where $x /tipobebida = "Sin cafeína"
        return 
        <p>
        <h1>Bebida:{data($x /nombre/string())}</h1>
        <ul> 
        {
          for $y in doc ("franquicia_v2.xml")/franquicia/empresas/empresa
          where $y /bebidas_solicitadas/bebida/nombre = /franquicia/bebidas/bebida/@id 
          return 
          <li>{concat(data($y /cif/string()), " ",data($y /nombre/string()))}</li>
  
        }
        </ul>
        </p>
    }
  </body>
</html>