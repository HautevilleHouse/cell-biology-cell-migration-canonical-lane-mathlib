import HautevilleHouse.CellBiologyCellMigrationCanonicalLaneLean.MigrationAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

def bridgeClosed (A : MigrationAdmittedObject) : Prop :=
  MotilityClosed A.object

theorem bridge_from_admissible_class (A : MigrationAdmittedObject) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse