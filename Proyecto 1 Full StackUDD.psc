Algoritmo CalcularCostoFinalZapatos
	
    // Leer el precio original del producto
    Escribir "Ingrese el precio original del producto"
    Leer precio_original
	
    // Preguntar si el usuario tiene un c�digo de descuento
    Escribir "�Tiene un c�digo de descuento? (si/no)"
    Leer tiene_descuento
    
    // Inicializar variables de descuento
    descuento_cupon <- 0
    Si tiene_descuento = "si" Entonces
        // Aplicar el descuento del cup�n (10%)
        descuento_cupon <- precio_original * 0.10
    FinSi
    
    precio_con_descuento <- precio_original - descuento_cupon
	
    // Aplicar el IVA (12%)
    iva <- precio_con_descuento * 0.12
    precio_con_iva <- precio_con_descuento + iva
	
    // Leer la cantidad de productos comprados (2 pares)
    Escribir "Ingrese la cantidad de productos comprados"
    Leer cantidad
	
    // Aplicar el descuento por cantidad (5%)
    descuento_cantidad <- precio_con_iva * 0.05
    precio_con_descuento_cantidad <- precio_con_iva - descuento_cantidad
	
    // Calcular el costo total del producto sin env�o (para los 2 pares)
    costo_total_producto <- precio_con_descuento_cantidad * cantidad
	
    // Preguntar si el env�o es nacional o internacional
    Escribir "�El env�o es nacional o internacional? (nacional/internacional)"
    Leer tipo_envio
	
    // Calcular el costo de env�o basado en el tipo de env�o y el peso del paquete
    costo_envio_fijo <- 0
    Si tipo_envio = "nacional" Entonces
        costo_envio_fijo <- 10
    Sino
        costo_envio_fijo <- 25
    FinSi
	
    peso_paquete <- 3 // Peso del paquete en kg
    costo_envio_por_peso <- 2 * peso_paquete
    costo_envio_total <- costo_envio_fijo + costo_envio_por_peso
	
    // Calcular el costo final del producto incluyendo env�o
    costo_final <- costo_total_producto + costo_envio_total
	
    // Mostrar el desglose de los costos
    Escribir "Desglose del costo final:"
    Escribir "Precio original del producto: $", precio_original
    Si tiene_descuento = "si" Entonces
        Escribir "Descuento por cup�n aplicado: $", descuento_cupon
    FinSi
    Escribir "Precio con descuento del cup�n: $", precio_con_descuento
    Escribir "IVA aplicado: $", iva
    Escribir "Precio con IVA: $", precio_con_iva
    Escribir "Descuento por cantidad aplicado: $", descuento_cantidad
    Escribir "Precio con descuento por cantidad: $", precio_con_descuento_cantidad
    Escribir "Costo total del producto (", cantidad, " pares): $", costo_total_producto
    Escribir "Costo de env�o total: $", costo_envio_total
    Escribir "Costo final del producto: $", costo_final

FinAlgoritmo
