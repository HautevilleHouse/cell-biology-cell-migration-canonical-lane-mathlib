import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure CellMigrationAdmittedObject where
  cellType : Type u
  migrationAssay : Type v
  assayClosed : Prop
  migrationEndpoint : Prop
  conclusion : assayClosed ∧ migrationEndpoint

structure AdmissibleClass where
  object : CellMigrationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.assayClosed ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse