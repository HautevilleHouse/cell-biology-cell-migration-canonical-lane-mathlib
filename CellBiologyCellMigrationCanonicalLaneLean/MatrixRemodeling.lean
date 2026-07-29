import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure MatrixRemodelingPackage where
  extracellularMatrixComposition : Type u
  metalloproteinaseSecretion : Prop
  matrixDegradation : Prop
  tractionMediatedRearrangement : Prop
  migrationPathClearing : Prop

structure MatrixRemodelingEvidence (M : MatrixRemodelingPackage) where
  metalloproteinaseSecretionClosed : M.metalloproteinaseSecretion
  matrixDegradationClosed : M.matrixDegradation
  tractionMediatedRearrangementClosed : M.tractionMediatedRearrangement
  migrationPathClearingClosed : M.migrationPathClearing

def MatrixRemodelingClosed (M : MatrixRemodelingPackage) : Prop :=
  M.metalloproteinaseSecretion ∧ M.matrixDegradation ∧
  M.tractionMediatedRearrangement ∧ M.migrationPathClearing

theorem matrix_remodeling_closed_from_evidence
    (M : MatrixRemodelingPackage) (E : MatrixRemodelingEvidence M) :
    MatrixRemodelingClosed M := by
  exact And.intro E.metalloproteinaseSecretionClosed
    (And.intro E.matrixDegradationClosed
      (And.intro E.tractionMediatedRearrangementClosed E.migrationPathClearingClosed))

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse