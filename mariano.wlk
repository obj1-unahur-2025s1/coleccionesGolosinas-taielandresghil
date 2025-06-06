import golosinas.*

object mariano {
    const golosinas = []
    method comprar(unaGolosina) {golosinas.add(unaGolosina)}
    method desechar(unaGolosina) {
        if (golosinas.contains(unaGolosina)) {
            golosinas.remove(unaGolosina)
        }
    }
    method cantidadDeGolosinas() = golosinas.size()
    method probarGolosina() = golosinas.forEach({g => g.efectoMordisco()})
    method hayGolosinaSinTACC() = golosinas.any({g => g.libreDeGluten()})
    method preciosCuidados() = golosinas.all({g => g.precioPesos() <= 10})
    method golosinaDeSabor(unSabor) = golosinas.first({g => g.gusto() == unSabor}) 
    method golosinasDeSabor(unSabor) = golosinas.filter({g => g.gusto() == unSabor})
    method sabores() = golosinas.asList().gusto()
    method golosinaMasCara() = golosinas.max({g => g.precioPesos()})
    method pesoGolosinas() = golosinas.sum({g => g.precioPesos()})
}