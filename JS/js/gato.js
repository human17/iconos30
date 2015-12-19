//http://es.wikipedia.org/wiki/Tres_en_l%C3%ADnea

//Varibales
var turno = 1,
	queTurno,
	gato = new Array(9),
	celdas = document.getElementsByClassName('gato'),
	n = 0

//Funciones
function jugar(evento)
{
	//alert(evento.target.id)
	var celda = evento.target,
		idCelda = evento.target.id,
		posicionAMarcar = idCelda[1]-1
	//alert(posicionAMarcar)

	queTurno = turno%2

	if(queTurno == 1)
	{
		alert('X')
	}
	else
	{
		alert('O')
	}
	
	turno++
}

//Eventos y Estados Inciales
window.onload = function ()
{
	while( n < celdas.length )
	{
		celdas[n].addEventListener('click', jugar)
		n++
	}
}