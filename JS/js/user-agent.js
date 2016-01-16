var agente = navigator.userAgent.toLowerCase(),
	moviles = /iphone|ipod|ipad|android|blackberry|opera mini|iemobile|mobile/,
	d = document,
	plataforma,
	navegador

function detectarDispositivo()
{
	console.log(agente, agente.search(moviles))

	var aDondeVoy = ( agente.search(moviles) > -1 ) ? 'mobile.html' : 'desktop.html'

	window.location.href = aDondeVoy
}

function detectarPlataforma()
{
	if( agente.indexOf('mac') > -1 )
	{
		plataforma = (agente.search(moviles) > -1) ? 'iOS' : 'OS X'
	}
	else if( agente.indexOf('win') > -1 )
	{
		plataforma = (agente.search(moviles) > -1) ? 'Windows Phone' : 'Windows NT'
	}
	else if( agente.indexOf('linux') > -1 )
	{
		plataforma = (agente.search(moviles) > -1) ? 'Android' : 'Alguna Distribución de Linux'
	}
	else
	{
		plataforma = 'Plataforma Desconocida'
	}

	d.getElementById('plataforma').innerHTML = plataforma
}

function detectarNavegador()
{
	if( agente.indexOf('chrome') > -1 )
	{
		navegador = (agente.search(moviles) > -1) ? 'Chrome Mobile' : 'Chrome'
	}
	else if( agente.indexOf('firefox') > -1 )
	{
		navegador = (agente.search(moviles) > -1) ? 'Firefox Mobile' : 'Firefox'
	}
	else if( agente.indexOf('safari') > -1 )
	{
		navegador = (agente.search(moviles) > -1) ? 'Safari Mobile' : 'Safari'
	}
	else if( agente.indexOf('opera') > -1 )
	{
		navegador = (agente.search(moviles) > -1) ? 'Opera Mini' : 'Opera'
	}
	else if( agente.indexOf('msie') > -1 )
	{
		navegador = (agente.search(moviles) > -1) ? 'IE Mobile' : 'IE'
	}
	else if( agente.indexOf('edge') > -1 )
	{
		navegador = (agente.search(moviles) > -1) ? 'Edge Mobile' : 'Edge'
	}
	else
	{
		navegador = 'Navegador Desconocido'
	}

	d.getElementById('navegador').innerHTML = navegador
}

function detectarUsuario()
{
	detectarPlataforma()
	detectarNavegador()
	d.getElementById('user-agent').innerHTML = agente
}