import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure ExtracellularMatrixRemodelingPackage where
  matrixDegradation : Prop
  matrixSynthesis : Prop
  integrinMediatedAdhesion : Prop
  matrixStiffnessSensing : Prop

structure ExtracellularMatrixRemodelingEvidence (E : ExtracellularMatrixRemodelingPackage) where
  matrixDegradationClosed : E.matrixDegradation
  matrixSynthesisClosed : E.matrixSynthesis
  integrinMediatedAdhesionClosed : E.integrinMediatedAdhesion
  matrixStiffnessSensingClosed : E.matrixStiffnessSensing

def ExtracellularMatrixRemodelingClosed (E : ExtracellularMatrixRemodelingPackage) : Prop :=
  E.matrixDegradation ∧ E.matrixSynthesis ∧
  E.integrinMediatedAdhesion ∧ E.matrixStiffnessSensing

theorem extracellular_matrix_remodeling_closed_from_evidence
    (E : ExtracellularMatrixRemodelingPackage) (Ev : ExtracellularMatrixRemodelingEvidence E) :
    ExtracellularMatrixRemodelingClosed E := by
  exact And.intro Ev.matrixDegradationClosed
    (And.intro Ev.matrixSynthesisClosed
      (And.intro Ev.integrinMediatedAdhesionClosed Ev.matrixStiffnessSensingClosed))

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse