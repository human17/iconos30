//Constantes
var READY_STATE_COMPLETE = 4,
	OK = 200,
	d = document,
	w = window,
	ajax = new XMLHttpRequest(),
	precarga = d.querySelector('#precarga'),
	respuesta = d.querySelector('#respuesta'),
	enlacesMenu = d.querySelectorAll('.menu')

function cambiarContenido()
{
	precarga.innerHTML = '<img src="activos/loader.gif">'
	
	//console.log(ajax)

	if(ajax.readyState == READY_STATE_COMPLETE && ajax.status == OK )
	{
		console.log(ajax)
		precarga.innerHTML = null
		respuesta.innerHTML = ajax.response
	}
	else
	{
		precarga.innerHTML = null
		respuesta.innerHTML = '<p>EL servidor No responde. Error N°' + ajax.status + ': <mark>' + ajax.statusText + '</mark><p>'
	}
}

function ejecutarAJAX(evento)
{
	//alert('funciona')
	evento.preventDefault()
	ajax.onreadystatechange = cambiarContenido
	ajax.open('GET', evento.target.href)
	/*
		http://es.wikipedia.org/wiki/Multipurpose_Internet_Mail_Extensions
		http://sites.utoronto.ca/webdocs/HTMLdocs/Book/Book-3ed/appb/mimetype.html
	*/
	ajax.setRequestHeader('Content-Type', 'text/html')
	ajax.send()
}

function cargarDocumento()
{
	for(var n=0; n < enlacesMenu.length; n++)
	{
		enlacesMenu[n].onclick = ejecutarAJAX
	}
}

w.onload = cargarDocumento