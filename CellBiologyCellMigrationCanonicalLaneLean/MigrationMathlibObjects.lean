import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure Cell where
  cellType : String
  motilitySpeed : Float
  persistenceTime : Float

structure Environment where
  matrixStiffness : Float
  ligandConcentration : Float

structure MotilityModel where
  cell : Cell
  environment : Environment
  mechanism : String
  parameters : List Float

def MotilityClosed (M : MotilityModel) : Prop :=
  M.cell.motilitySpeed > 0 ∧ M.environment.matrixStiffness > 0

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse