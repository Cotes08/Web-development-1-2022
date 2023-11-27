function validarDNI()
{
    var dni;
    var letras = ['T', 'R', 'W', 'A', 'G', 'M', 'Y', 'F', 'P', 'D', 'X', 'B', 'N', 'J', 'Z', 'S', 'Q', 'V', 'H', 'L', 'C', 'K', 'E', 'T'];
    var letra;
    var i;
    /*Cogemos el valor del dni*/ 
    dni = document.getElementById("dni").value;
    letra = dni.charAt(8).toUpperCase();/*Sacamos cual es la letra*/

    /*Hacemos un if para comprobar si la letra es correcta y si lo es comprobamos numero a numero para ver si son correctos*/
    if(letra != letras[dni.substring(0, 8) % 23])
    {
        for(i = 0; i< 8; i++)
        {
            if(dni.charAt(i) !=0 && dni.charAt(i) !=1 && dni.charAt(i) !=2 && dni.charAt(i) !=3 && dni.charAt(i) !=4 && dni.charAt(i) !=5 && dni.charAt(i) !=6 && dni.charAt(i) !=7 && dni.charAt(i) !=8 && dni.charAt(i) !=9)
            {
                alert (`El dni no es valido ya que en la posicion ${i+1} de su dni hay un caracter en vez de un numero`);
                return false;
            }
        }
        alert (`El dni no es valido ya que la letra ${letra} de su dni no coincide con el numero indicado`);
        return false;
    }
    else
    {
        return true;
    }
}

/*Funcion que calcula la fecha actual y la que ha introducido para ver que edad tiene, si tiene mas de 16 es correcto*/ 
function validarFecha()
{
    var fechaHoy = new Date(); 
    var fecha = document.getElementById("fecha").value;
    var fechaNac = new Date(fecha);

    var edad = fechaHoy.getFullYear() - fechaNac.getFullYear();
    var mes = fechaHoy.getMonth() - fechaNac.getMonth();


    if(mes < 0 || (mes ===0 && fechaHoy.getDate() < fechaNac.getDate()))
    {
        edad--;
    }
    if(edad < 16)
    {
        alert (`Usted tiene años ${edad} y debe tener minimo 16`);
        return false;
    }
    else
    {
        return true;
    }
    
}

/*Validamos que los se hayan selecionado los checkbox necesarios */
function validarChecks()
{
    var checkbox0 = document.getElementById("checkbox0").checked;
    var checkbox1 = document.getElementById("checkbox1").checked;
    var checkbox2 = document.getElementById("checkbox2").checked;
    var checkbox3 = document.getElementById("checkbox3").checked;
    var cont = 0;

    if(checkbox1 == true)
    {
        cont++;
    }
    if(checkbox2 == true)
    {
        cont++;
    }
    if(checkbox3 == true)
    {
        cont++;
    }
    
    if (checkbox0 == true && cont == 0)
    {
        alert(`No se ha selecionado ninguna categoria de interes`);
        return false;
    }
    else if(checkbox0 == true && cont > 2)
    {   
        alert(`Ha seleccionado mas categorias de las permitidas, debe seleccionar 1 o 2 categorias`);
        return false;
    }
    else if(checkbox0 == false && cont >0)
    {
        alert(`Usted ha seleccionado una o mas categorias y no ha marcado la casilla de recibir comunicaciones`);
        return false;
    }
    else
    {
        return true;
    }
}

/*Funcion para controlar las provincias  */
function provincias()
{
    var opcion_1 = new Array ("", "Alicante", "Valencia", "Castellon");
    var opcion_2 = new Array ("", "Bacrelona", "Tarragona", "Gerona");
    var opcion_3 = new Array ("","Madrid");
    var opcion_4 = new Array ("", "Malaga", "Almeria", "Sevilla");

    var eleccion;
    var opciones;
    var numeros;
    var cont;

    eleccion = document.formulario.comaut[document.formulario.comaut.selectedIndex].value;

    if (eleccion != 0)
    {
        opciones = eval("opcion_"+eleccion);
        numeros = opciones.length;
        document.formulario.provincia.length = numeros;

        for(cont = 0; cont<numeros; cont++)
        {
            document.formulario.provincia.options[cont].value = opciones[cont];
            document.formulario.provincia.options[cont].text = opciones[cont];
        }
    }
    else
    {
        document.formulario.provincia.length = 1;
        document.formulario.provincia.options[0].value = "-";
        document.formulario.provincia.options[0].text = "-";
    }
    document.formulario.provincia.options[0].selected = true;
}

/*Comprobamos que todas las validaciones son correctas */
function result()
{
    var validar

    if (validarDNI()==false) 
    {
        validar = false;
    }
    if (validarFecha()==false) 
    {
        validar = false;
    }
    if (validarChecks()==false) 
    {
        validar = false;
    }
    if (validar == false)
    {
        return false;
    }
    else
    {
        return true;
    }
}



/*Media ocultar contenido*/
function noticias()
{
    var not_1 = document.getElementById("not_menu");
    var not_2 = document.getElementById("not_nov");
    var not_3 = document.getElementById("not_nov2"); 
    var not_4 = document.getElementById("not_titulo");

    if(not_2.style.display == "none" && not_3.style.display == "none")
    {
        not_1.style.display = "none";
        not_2.style.display = "none";
        not_3.style.display = "none";
        not_4.style.display = "none";

    }
    else
    {
        not_1.style.display = "block";
        not_2.style.display = "block";
        not_3.style.display = "block";
        not_4.style.display = "block"; 
    } 
        

}

/*Funcion para borrar el mensaje y la pelota */
function borrar()
{
    if (document.getElementById("not_nov").style.display == "block"); 
    {
        document.getElementById("msg").style.display = "none";
        document.getElementById("movimiento").style.display = "none";
    }   
}
/*Funcion para establecer un tiempo para que desaparezca la pelota */


/*La funcion navegador se ha intentado pero no se como hacerla porque me da fallo en lo de appName*/
function navegador()
{
    var navegador = "Chrome";

    if (navigator.appName.indexOf(navegador) != 1) 
    {
        return true;
    }
}

/*Esta funcion es la de tiempo banner*/ 
setTimeout(function()
            {
                document.getElementById("movimiento").style.display="none";
            },10000
);

