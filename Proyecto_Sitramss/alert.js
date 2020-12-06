function Success() {
    Swal.fire(
        'Bien Hecho!',
        'La acción se ha realizado de forma correcta!',
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
        text: 'No se pudo realizar la acción solicitada',
        footer: '<a href>Ocurrio un error!</a>'
    })
}
