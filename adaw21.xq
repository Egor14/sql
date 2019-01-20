let $d:= doc("northwind")
let $s:= $d/northwind/Suppliers/Supplier[HomePage != '']/@SupplierID

return for $i in $s 
          return avg($d/northwind/Products/Product[SupplierID=$i]/UnitPrice)