object pepe {
	
var categoria = cadete
var bonoResultado = montoFijo
var bonoPresentismo = normal
var sueldoTotal = 0
var faltas = 0

method calcularSueldo() {
    sueldoTotal = self.netoEmpleado() + bonoResultado.bonoResultado(self) + bonoPresentismo.bonoPresentismo(self)
}

method netoEmpleado(){
    return categoria.sueldoNeto()
}

method faltas(){
    return faltas
}

method faltar() {  
    faltas = faltas + 1
}

method bonoPresentismo() {
    return bonoPresentismo
}

method bonoResultado() {
    return bonoResultado
}

method bonoPresentismo(bono){
    bonoPresentismo = bono
}

method bonoResultado(bono){
    bonoResultado = bono
}

method categoria(){
    return categoria
}

method categoria(_categoria){
    categoria = _categoria
}

}


//CATEGORIAS

object gerente{

const sueldoNeto = 15000

method sueldoNeto(){
    return sueldoNeto
}

}

object cadete{

const sueldoNeto = 20000

method sueldoNeto(){
    return sueldoNeto
}

}

//BONOS POR RESULTADOS

object porcentaje {

method bonoResultado(empleado) {
    return empleado.netoEmpleado() * 0.1 

}
}

object montoFijo {

method bonoResultado(empleado) {
    return 800

}
}

object nuloResultado{

method bonoResultado(empleado) {
    return 0

}
}

//BONOS POR PRESENTISMO

object normal{

method bonoPresentismo(empleado) {
     if (empleado.faltas() == 0) {return 2000}
        else if (empleado.faltas() == 1) {return 1000}
            else {return 0}
        }

}

object ajuste {

method bonoPresentismo(empleado) {
     if (empleado.faltas() == 0) {return 100}
            else{return 0}
        }

}

object demagogico {

method bonoPresentismo(empleado) {
     if (empleado.netoEmpleado() <= 18000) {return 500}
            else{return 300}
        }

}

object nuloPresentismo {

method bonoPresentismo(empleado) {
    return 0
}

}
