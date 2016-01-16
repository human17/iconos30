//https://developer.mozilla.org/es/docs/Web/API/Geolocation/getCurrentPosition
var d = document,
	ubicacion = d.getElementById('ubicacion'),
	latitud = d.getElementById('latitud'),
	longitud = d.getElementById('longitud'),
	precision = d.getElementById('precision'),
	gmaps = d.getElementById('gmaps'),
	coords,
	options = {
		enableHighAccuracy : true,
		timeout : 5000
	}

function success(pos)
{
	console.log(pos)
	coords = pos.coords
	
	latitud.innerHTML = coords.latitude
	longitud.innerHTML = coords.longitude
	precision.innerHTML = coords.accuracy
	gmaps.href = 'https://www.google.com.mx/maps/@' + coords.latitude + ',' + coords.longitude
}

function error(err)
{
	console.log(err)
	ubicacion.innerHTML = '<li>Error al ubicarte:' + err.code +' Mensaje: ' + err.message +'</li>'
}

navigator.geolocation.getCurrentPosition(success, error, options)