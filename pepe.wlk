object pepe {
	
var categoria = cadete
var bonoResultado = montoFijo
var bonoPresentismo = normal
var sueldoTotal = 0
var faltas = 0

method calcularSueldo() {
    sueldoTotal = self.neto() + bonoResultado.bonoResultado(self) + bonoPresentismo.bonoPresentismo(self)
 }

method neto(){
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

method sueldoTotal(){
    return sueldoTotal
 }
}

object moria {

var categoria = cadete 
var bonoResultado = porcentaje 
var sueldoTotal = 0

method categoria(){
    return categoria
 }

method categoria(_categoria){
    categoria = _categoria    
 }

method bonoResultado(){
    return bonoResultado
 }

method bonoResultado(_bonoResultado){
    bonoResultado = _bonoResultado    
 }

method neto(){
  return categoria.sueldoNeto() * 1.3
 }

method calcularSueldo(){
    sueldoTotal = self.neto() + bonoResultado.bonoResultado(self)
 }

method sueldoTotal(){

    return sueldoTotal

 }

}


object roque {

const neto = 28000
var bonoResultado = porcentaje
var sueldoTotal = 0

method calcularSueldo(){
    sueldoTotal = self.neto() + bonoResultado.bonoResultado(self) + 9000
 }

method neto(){
    return neto    
 }

method sueldoTotal(){
    return sueldoTotal    
 }

method bonoResultado(){
    return bonoResultado
 } 

method bonoResultado(_bonoResultado){
    bonoResultado = _bonoResultado    
 }

}

object ernesto{

var compañero = pepe
var bonoPresentismo = normal
const faltas = 0
var sueldoTotal = 0

method compañero(){
    return compañero
 }

method compañero(_compañero){
    compañero = _compañero    
 }

method bonoPresentismo(){
   return bonoPresentismo    
 }

method bonoPresentismo(_bonoPresentismo){
    bonoPresentismo = _bonoPresentismo    
 }

method faltas(){
    return faltas
 }

method calcularSueldo(){
    sueldoTotal = compañero.neto() + bonoPresentismo.bonoPresentismo(self)
 }

method sueldoTotal(){
    return sueldoTotal
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

object vendedor {

const netoBase = 16000
var muchasVentas = false
var sueldoNeto = 0

method activarAumentoPorMuchasVentas(){
    muchasVentas = true    
 }

method desactivarAumentoPorMuchasVentas(){
    muchasVentas = false 
 }

method sueldoNeto(){
    return sueldoNeto
 }

method calcularSueldo(){
    if (muchasVentas){sueldoNeto = netoBase * 1.25}   
        else {sueldoNeto = netoBase} 
 }

}

object medioTiempo{

var categoriaBase = vendedor
var sueldoNeto = 0

method categoriaBase(categoria){
    categoriaBase = categoria
 }

method calcularSueldo(){
    sueldoNeto = categoriaBase.sueldoNeto() / 2 
 }

method sueldoNeto(){
    return sueldoNeto
 }

}

//BONOS POR RESULTADOS

object porcentaje {

method bonoResultado(empleado) {
    return empleado.neto() * 0.1 

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
     if (empleado.neto() <= 18000) {return 500}
            else{return 300}
        }

}

object nuloPresentismo {

method bonoPresentismo(empleado) {
    return 0
 }

}
