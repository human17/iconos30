//Algoritmo serie de pasos ordenados y finitos para realizar una tarea (es como una receta)
//Diagrama de FLujo es la representación gráfica de un algoritmo
//Closure - Función anónima autoejecutable encapsulada
(function (){
	var d = document,
		fecha = new Date(),
		hora = fecha.getHours(),
		//toLocaleString()  fecha y hora
		//toLocaleDateString() fecha
		//toLocaleTimeString() hora
		fechaFormato = fecha.toLocaleTimeString(),
		reloj = d.getElementById('reloj'),
		btnReloj = d.querySelector('#iniciar-reloj'),
		btnAlarma = d.querySelector('#alarma-reloj'),
		alarma = d.createElement('audio'),
		hojaCSS = d.createElement('link'),
		saludo = d.getElementById('saludo'),
		btnNumero = d.getElementById('numero')

	function saludar()
	{
		/*
		No me jodas 0-5
		Buenos dias 6 -11
		Buenas tardes 12 -18 
		Buenas noches 19-23
		*/
		//if(hora < 6)
		if(hora <= 5)
		{
			saludo.innerHTML = 'No me jodas!!!'
			hojaCSS.href = 'activos/duermete.css'
		}
		else if(hora >= 6 && hora <= 11)
		{
			saludo.innerHTML = 'Buenos dias'
			hojaCSS.href = 'activos/dia.css'
		}
		else if(hora >= 12 && hora <= 18)
		{
			saludo.innerHTML = 'Buenos tardes'
			hojaCSS.href = 'activos/tarde.css'
		}
		else
		{
			saludo.innerHTML = 'Buenos noches'
			hojaCSS.href = 'activos/noche.css'
		}

		hojaCSS.rel = 'stylesheet'
		document.head.appendChild(hojaCSS)
	}

	function parImpar()
	{
		//alert('Ingresa un número')
		//confirm('Ingresa un número')
		var numero = prompt('Ingresa un número'),
			modulo = numero%2,
			textoPar = 'El numero: ' + numero + ' es Par'
			textoImpar = 'El numero: ' + numero + ' es Impar'

		// = asignación 
		// == comparación de valores 
		// === ser identico (comparamos valor y tipo de dato)
		/*
			if(modulo == 0)
			{
				alert('El numero: ' + numero + ' es Par')
			}
			else
			{
				alert('El numero: ' + numero + ' es Impar')	
			}
		*/
		if( isNaN(modulo) || numero == '' )
		{
			alert('No me engañes, "' + numero + '" no es un número')
		}	
		else
		{
			//operador ternario
			//(condicion) ? verdadero : falso
			alert( (modulo == 0) ? textoPar : textoImpar )
		}
		console.log( typeof numero )
	}

	reloj.innerHTML = fechaFormato
	reloj.style.fontSize = '500%'

	alarma.src = 'activos/alarma.mp3'

	btnReloj.onclick = function () {
		//alert('Hola')
		setInterval(function (){
			reloj.innerHTML = new Date().toLocaleTimeString()
		}, 1000)
	}

	btnAlarma.addEventListener('click', function (){
		setTimeout(function (){
			alarma.play()
		}, 3000)
	})

	window.onload = saludar

	btnNumero.onclick = parImpar
	//console.log(btnVerde)
})()