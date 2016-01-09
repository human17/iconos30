//http://es.wikipedia.org/wiki/Tres_en_l%C3%ADnea

//Varibales
var turno = 1,
	queTurno,
	gato = new Array(9),
	celdas = document.getElementsByClassName('gato'),
	n = 0

//Funciones
function quienGana(letra)
{
	if(
		(gato[0]==letra && gato[1]==letra && gato[2]==letra) || 
		(gato[3]==letra && gato[4]==letra && gato[5]==letra) || 
		(gato[6]==letra && gato[7]==letra && gato[8]==letra) || 
		(gato[0]==letra && gato[3]==letra && gato[6]==letra) || 
		(gato[1]==letra && gato[4]==letra && gato[7]==letra) || 
		(gato[2]==letra && gato[5]==letra && gato[8]==letra) || 
		(gato[0]==letra && gato[4]==letra && gato[8]==letra) || 
		(gato[2]==letra && gato[4]==letra && gato[6]==letra)
	)
	{
		alert('Jugador ' + letra + ' GANA')
		window.location.reload()
	}
	else
	{
		if(turno == 9)
		{
			alert('EMPATE')
			window.location.reload()
		}
		else
		{
			turno++
		}
	}
}

function jugar(evento)
{
	//alert(evento.target.id)
	var celda = evento.target,
		idCelda = evento.target.id,
		posicionAMarcar = idCelda[1]-1
	//alert(posicionAMarcar)
	celda.removeEventListener('click', jugar)

	queTurno = turno%2

	if(queTurno == 1)
	{
		//alert('X')
		celda.innerHTML = 'X'
		gato[posicionAMarcar] = 'X'
		quienGana('X')
	}
	else
	{
		//alert('O')
		celda.innerHTML = 'O'
		gato[posicionAMarcar] = 'O'
		quienGana('O')
	}

	console.log(gato)
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