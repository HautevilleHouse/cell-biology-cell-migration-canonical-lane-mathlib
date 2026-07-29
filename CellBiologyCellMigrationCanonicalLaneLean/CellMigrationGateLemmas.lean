import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCellMigrationCanonicalLaneLean.CellMigrationBridgeLemmas

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse