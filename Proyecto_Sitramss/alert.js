function Success() {
    Swal.fire(
        'Bien Hecho!',
        'Datos almacenados correctamente!',
        'success'
    )
}

function Message() {
    Swal.fire('Este es un simple mensaje')
}

function DatosErroneos() {
    Swal.fire({
        type: 'error',
        title: 'oh no...',
        text: 'Por favor revisa los datos ingresados',
        footer: '<a href>Ocurrio un error!</a>'
    })
}
