def ultima_aparicion(lista: list, numero: int) -> int:
    posicion: int
    for i in range(len(lista)):
        if lista[i] == numero:
            posicion = i
    return posicion
#print(ultima_aparicion([-1,4,0,4,100,0,100,22,1,0],0))


def elementos_exclusivos(lista1: list, lista2: list) -> list:
    lista_exclusiva: list = []
    for i in lista1:
        if i not in lista2:
            lista_exclusiva.append(i)
    for j in lista2:
        if j not in lista1:
            lista_exclusiva.append(j)
    return lista_exclusiva
#print(elementos_exclusivos([1,2,5,34],[3,2,1,6]))


def traducciones_iguales(traduccion1: dict, traduccion2: dict) -> int:
    acumulador: int = 0
    for castellano1, ingles in traduccion1.items():
        for castellano2, aleman in traduccion2.items():
            if castellano1 == castellano2 and ingles == aleman:
                acumulador += 1
    return acumulador
#print(traducciones_iguales({"Mano": "Hand", "Pie": "Fuss", "Dedo": "Finger","Cara": "Gesicht"},{"Pie": "Foot", "Dedo": "Finger", "Mano": "Hand"}))



def convertir_diccionario(lista: list) -> dict:
    diccionario_nuevo: dict = {}
    for i in lista:
        if i in diccionario_nuevo:
            diccionario_nuevo[i] += 1
        else:
            diccionario_nuevo[i] = 1
    return diccionario_nuevo
#print(convertir_diccionario([2,3,5,1,2,5,20,1,2]))

colores = { "amarillo":"yellow", "azul":"blue", "verde":"green" }
colores.pop("amarillo")
print(colores)
"""
in: igual valor a la entrada
out: nuevo valor a la entrada
inout: nuevo valor a la entrada pero su valor inicial importa

Lista:
.append(x)
.remove(x) -> elimina el primer elemento x
.index(x) -> posicion de la primera aparicion de x
.count(x) -> cantidad de apariciones de x
.insert(p,x) -> insertar x delante de la posicion p
cadena.split(separador) -> cadena a lista
"".join(lista) -> lista a cadena

Pila:
.pop() -> elimina el ultimo elemento de la lista
.pop(0) -> eliminar el primer elemnto de la lista
a[-1] -> devuelve el ultimo elemento insertado
Dict:
.get(x,"msj") -> devuelve el valor de clave x, si no el msj
.keys() -> lista con las claves del dict
.values() -> lista con valores del dict
.items() -> lista con clave-valor
.pop(x, "msj") -> elimina elemento apartir de la clave
.clear() -> borra todo del dict
"""
