var item = 0;
$(document).ready(function() {
    //getUsuario()
    //infoProveedor = getProveedores();
    var item = 0;
    getOrdenCompra();
    getProductos();
    
    
    $(".claseProveedor").click(function() {
        for (var i = 0; i < infoProveedor.length; i++) {
            if (infoProveedor[i].NOMBREPERSONA == $(".OS option:selected").text()) {
                $("#cedulaProveedor").text(infoProveedor[i].NUMCEDULA);
                $("#nombreProveedor").text(infoProveedor[i].NOMBREPERSONA);
                $("#direccionProveedor").text(infoProveedor[i].DIRECCIONPERSONA);
                $("#telefonoProveedor").text(infoProveedor[i].TELEONOPERSONA);
            }
        }
    });
    $("#enviar").click(function() {
        var auxNombre = "";
        var auxCantidad = "";
        var aux = '{"CANTIDAD":' + '"' + item + '"' + ',';
        for (var i = 1; i <= item; i++) {
            aux = aux + '"PRODUCTO' + i + '":'
            aux = aux + '{"NOMBRE":' + '"' + $("#producto" + i).text() + '"' + ", ";
            if (isNaN($("#cantidad" + i).val()) || $("#cantidad" + i).val() == "") {
                alert("Cantidad invalida en item " + i)
                return
            }
            aux = aux + ' "CANTIDAD": "' + $("#cantidad" + i).val() + '"' + "},";
        }
        aux = aux + '"NUMEROTRANSACCION":' + '"' + $("#ordenCompra").text() + '"' + ",";
        aux = aux + '"IDENTIFICACION": "' + $("#idE").text() + '"' + ",";
        aux = aux + '"NUMCEDULA": "' + $("#cedulaProveedor").text() + '"' + ",";
        aux = aux + '"FECHATRANSACCION": "' + $("#fecha").text() + '"' + "}";
        var obj = JSON.parse(aux);
        facturaPdf(obj);
        $.ajax({
            url: 'http://localhost:3000/ordencompra',
            type: 'POST',
            data : obj,
            dataType: 'json',
            success: function(json) {
                for (var i = 0; i < json.length; i++) {
                    $("#OS").append("<option class='claseProducto'>"
                       + json[i].NOMBRE + "</option>");
                }

            },
            error: function(xhr, status) {
                alert('Disculpe, existió un problema');
            },
            complete: function(xhr, status) {
                alert('Petición realizada');
            }
        });

    });
});

function facturaPdf(json) {
    var columns = ["No orden Compra", "Fecha", "Empleado", "Proveedor", "Direccion", "Telefono"];
    var rows = [
        [$("#ordenCompra").text(), $("#fecha").text(), $("#idE").text(), $("#nombreProveedor").text(),
            $("#direccionProveedor").text(), $("#telefonoProveedor").text()
        ],

    ];
    var columns1 = ["Item", "Producto", "Precio", "Cantidad"];
    var rows1=[];
    var j;
    for (var i = 1; i <= json.CANTIDAD; i++) {
      rows1[i-1]=[i,json["PRODUCTO"+i].NOMBRE,"null",json["PRODUCTO"+i].CANTIDAD];
    }
    var doc = new jsPDF('p', 'pt');
    var doc1 = new jsPDF('p', 'pt');

    doc.autoTable(columns, rows);
    doc1.autoTable(columns1,rows1);
    doc.save('encabezado.pdf');
    doc1.save('detalle.pdf')

}
function getUsuario() {
    $.ajax({
        url: 'http://localhost:3000/usuario',
        type: 'GET',
        dataType: 'json',
        success: function(json) {
            $("#idE").text(json.IDENTIFICACION);
            $("#nombreE").text(json.NOMBREEMPLEADO);
        },
        error: function(xhr, status) {
            alert('Disculpe, existió un problema');
        },
        complete: function(xhr, status) {
            alert('Petición realizada');
        }
    });
}

function getOrdenCompra() {
    $.ajax({
        url: '/compras/orden',
        type: 'GET',
        dataType: 'json',
        success: function(json) {
            $("#ordenCompra").text(json.ID);
        },
        error: function(xhr, status) {
            console.log('Disculpe, existió un problema getOrdenCompra'+JSON.stringify(xhr)+""+status);
        },
        complete: function(xhr, status) {
            console.log('Petición realizada getOrdenCompra');
        }
    });
}

function getProductos() {
    $.ajax({
        url: '/productos/all',
        type: 'GET',
        dataType: 'json',
        success: function(json) {
            for (var i = 0; i < json.length; i++) {
                $(".OS").append("<option class='claseProducto'>"
                    + json[i].NOOMBRE + "</option>");
            }
            $(".claseProducto").click(function () {
                item += 1;
                var aux;
                aux = aux + "<tr id=tabla" + item + ">";
                aux = aux + "<td id=item" + item + ">" + item + "</td>";
                aux = aux + "<td id=producto" + item + ">" + $(".OS option:selected").text() + "</td>";
                aux = aux + "<td id=precio" + item + ">" + "precio</td>";
                aux = aux + "<td>" + "<input type='text' id=cantidad" + item + ">" + "</td>";
                aux = aux + "</tr>";
                $("#detalle").append(aux);
            });
        },
        error: function(xhr, status) {
            console.log('Disculpe, existió un problema');
        },
        complete: function(xhr, status) {
            console.log('Petición realizada');
        }
    });
}

function getProveedores() {
    var infoProveedor;
    $.ajax({
        url: 'http://localhost:3000/proveedor',
        type: 'GET',
        dataType: 'json',
        success: function(json) {
            for (var i = 0; i < json.length; i++) {
                $("#nombreProveedor").append("<option class='claseProveedor'>"
                    + json[i].NOMBREPERSONA + "</option>");
            }
            infoProveedor = json;
        },
        error: function(xhr, status) {
            alert('Disculpe, existió un problema');
        },
        complete: function(xhr, status) {
            alert('Petición realizada');
        }
    });
    return infoProveedor;
}
