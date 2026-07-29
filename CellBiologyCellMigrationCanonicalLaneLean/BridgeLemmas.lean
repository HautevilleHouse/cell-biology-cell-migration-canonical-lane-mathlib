import HautevilleHouse.CellBiologyCellMigrationCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CellMigrationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse
