//alert('Funciona')
/*
Orden del código en Programación:
	1.Importaciones o Requerimientos de otros archivos
	2.Definición de Constantes
	3.Definición de variables y objetos
	4.Definición de funciones
	5.Asignación de eventos y estados iniciales
*/
// Video donde se explican los metodos para selectores del DOM https://www.youtube.com/watch?v=2Pc4IQk1O3c
var d = document,
	btnRojo = d.getElementById('rojo'),
	btnVerde = d.querySelector('#verde'),
	btnAzul = d.getElementById('azul'),
	btnReset = d.querySelector('#resetear'),
	btns = d.getElementsByTagName('button')
	console.log(
		btns,
		btns.length,
		btns[1]
	)


function rojo(evento)
{
	document.body.style.backgroundColor = 'red'
	console.log(evento)
	evento.target.textContent = 'He pulsado el botón'
}

function verde(e)
{
	document.body.style.backgroundColor = 'green'
	console.log(e)

	e.target.textContent = 'He pulsado el botón'
	e.target.style.color = 'white'
	e.target.style.fontSize = '3rem'
	e.target.style.backgroundColor = 'black'
	e.target.style.outline = 'none'
	e.target.style.border = 'none'
	e.target.style.borderRadius = '1rem'
}

function azul(e)
{
	document.body.style.backgroundColor = 'blue'
	console.log(e)

	e.target.style.color = 'peru'
	e.target.style.fontSize = '2rem'
	e.target.style.backgroundColor = 'skyblue'
}

//Manejador de eventos semántico
btnVerde.onclick = verde

//Manejador de eventos múltiple
btnAzul.addEventListener('click', azul)

btnReset.addEventListener('click', function (){
	d.body.style.backgroundColor  = 'white'
	
	for(var n = 0; n < btns.length; n++)
	{
		btns[n].style.fontSize = '100%'
		btns[n].style.backgroundColor = 'gray'
		btns[n].style.color = 'black'
		btns[n].style.borderRadius = 0
	}

	btnAzul.removeEventListener('click', azul)
})