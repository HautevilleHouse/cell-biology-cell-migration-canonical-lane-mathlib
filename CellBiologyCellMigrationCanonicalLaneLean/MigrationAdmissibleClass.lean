import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure MigrationObject where
  cellType : String
  environment : String
  motilityMechanism : String

structure MigrationAdmittedObject where
  object : MigrationObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : MigrationAdmittedObject) : Prop :=
  MotilityClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse