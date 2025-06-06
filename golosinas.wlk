object bombon {
  const precioPesos = 5
  method precioPesos() = precioPesos
  var property peso = 15
  method gusto() = "frutilla"
  method libreDeGluten() = true
  method efectoMordisco() {
    peso = peso - (peso * 0.2 + 1) 
  }
}

object alfajor {
  const precioPesos = 12
  method precioPesos() = precioPesos
  var property peso = 300
  method gusto() = "chocolate"
  method libreDeGluten() = false
  method efectoMordisco() {
    peso = peso - (peso * 0.2 + 1)
  }
}

object caramelo {
  const precioPesos = 1
  method precioPesos() = precioPesos
  var property peso = 5
  method gusto() = "frutilla"
  method libreDeGluten() = true
  method efectoMordisco() {
    peso = peso - 1
  }
}

object chupetin {
  const precioPesos = 2
  method precioPesos() = precioPesos
  var property peso = 7
  method gusto() = "naranja"
  method libreDeGluten() = false
  method efectoMordisco() {
    if (peso >= 2) {
      peso = peso - (peso * 0.1)
    }
  }
}

object oblea {
  const precioPesos = 5
  method precioPesos() = precioPesos
  var property peso = 250
  method gusto() = "vainilla"
  method libreDeGluten() = false
  method efectoMordisco() {
    if (peso > 70) {
      peso = peso - (peso * 0.5)
    } else {
      peso = peso - (peso * 0.25)
    }
  }
}

object chocolatin {
  const precioPesos = 0.50 * peso
  method precioPesos() = precioPesos
  var property peso = 0
  method gusto() = "chocolate"
  method libreDeGluten() = false
  method efectoMordisco() {
    peso = peso - 2
  }
}

object pastillaTuttiFrutti {
  const precioPesos = if (self.libreDeGluten()) 7 else 10 
  method precioPesos() = precioPesos
  var property peso = 5
  var property glutenModificable = false
  method libreDeGluten() = glutenModificable
  var property gusto = "frutilla"
  method efectoMordisco() {
    if (gusto == "frutilla") {
      gusto = "chocolate"
    } else if (gusto == "chocolate") {
      gusto = "naranja"
    } else {
      gusto = "frutilla"
    }
  }
}

object golosinaBañada {
  var property golosinaInterior = oblea
  var peso = golosinaInterior.peso() + 4
  const precioPesos = 2 + golosinaInterior.precioPesos()
  method precioPesos() = precioPesos
  method gusto() = golosinaInterior.gusto()
  method libreDeGluten() = golosinaInterior.gusto()
  method efectoMordisco() {
    golosinaInterior.efectoMordisco()
    peso = peso - 2
  }
}