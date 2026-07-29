import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCellMigrationCanonicalLaneLean.CellMigrationAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.assayClosed

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion.1

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse