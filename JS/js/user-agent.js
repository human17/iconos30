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