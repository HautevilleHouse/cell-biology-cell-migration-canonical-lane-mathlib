import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure CellMigrationAdmittedObject where
  cellSystem : Type
  migrationPath : Prop
  extracellularSignal : Prop
  conclusion : CellMigrationWitnessClosed this

def CellMigrationWitnessClosed (O : CellMigrationAdmittedObject) : Prop :=
  O.migrationPath

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse