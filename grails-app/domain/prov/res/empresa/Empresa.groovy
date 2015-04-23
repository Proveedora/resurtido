package prov.res.empresa
import prov.res.sucursal.Sucursal
class Empresa {
	
	int CP
	String domicilio
	String estado
	String municipio
	String pais
	String razonSocial
	String regimen
	String RFC 
	
	
	


	static constraints = {
		
		CP (blank: false,size: 5)
		domicilio (blank: false)
		estado (blank: false)
		municipio(blank:false)
		pais(blank:false)
		razonSocial(blank:false)
		regimen(blank:false)
		RFC (blank:false)
	}
}