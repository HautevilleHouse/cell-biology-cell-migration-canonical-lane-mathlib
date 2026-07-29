import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure ActinPolymerizationPackage where
  nucleationCoreFormation : Prop
  filamentElongation : Prop
  branchingByArp23 : Prop
  retrogradeFlow : Prop
  membraneProtrusion : Prop

structure ActinPolymerizationEvidence (A : ActinPolymerizationPackage) where
  nucleationCoreFormationClosed : A.nucleationCoreFormation
  filamentElongationClosed : A.filamentElongation
  branchingByArp23Closed : A.branchingByArp23
  retrogradeFlowClosed : A.retrogradeFlow
  membraneProtrusionClosed : A.membraneProtrusion

def ActinPolymerizationClosed (A : ActinPolymerizationPackage) : Prop :=
  A.nucleationCoreFormation ∧ A.filamentElongation ∧
  A.branchingByArp23 ∧ A.retrogradeFlow ∧ A.membraneProtrusion

theorem actin_polymerization_closed_from_evidence
    (A : ActinPolymerizationPackage) (E : ActinPolymerizationEvidence A) :
    ActinPolymerizationClosed A := by
  exact And.intro E.nucleationCoreFormationClosed
    (And.intro E.filamentElongationClosed
      (And.intro E.branchingByArp23Closed
        (And.intro E.retrogradeFlowClosed E.membraneProtrusionClosed)))

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse