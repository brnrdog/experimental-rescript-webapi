@send
external newValueSpecifiedUnits: (
  DOM.svgLength,
  ~unitType: int,
  ~valueInSpecifiedUnits: float,
) => unit = "newValueSpecifiedUnits"

@send
external convertToSpecifiedUnits: (DOM.svgLength, int) => unit = "convertToSpecifiedUnits"
