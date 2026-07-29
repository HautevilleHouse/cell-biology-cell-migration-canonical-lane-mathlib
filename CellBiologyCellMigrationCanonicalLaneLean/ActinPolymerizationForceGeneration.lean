import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure ActinPolymerizationForceGenerationPackage where
  actinNucleation : Prop
  filamentElongation : Prop
  branchingProfilin : Prop
  retrogradeFlow : Prop
  protrusiveForce : Prop
  lamellipodiumFormation : Prop

structure ActinPolymerizationForceGenerationEvidence (P : ActinPolymerizationForceGenerationPackage) where
  actinNucleationClosed : P.actinNucleation
  filamentElongationClosed : P.filamentElongation
  branchingProfilinClosed : P.branchingProfilin
  retrogradeFlowClosed : P.retrogradeFlow
  protrusiveForceClosed : P.protrusiveForce
  lamellipodiumFormationClosed : P.lamellipodiumFormation

def ActinPolymerizationForceGenerationClosed (P : ActinPolymerizationForceGenerationPackage) : Prop :=
  P.actinNucleation ∧ P.filamentElongation ∧ P.branchingProfilin ∧ P.retrogradeFlow ∧ P.protrusiveForce ∧ P.lamellipodiumFormation

theorem actin_polymerization_force_generation_closed_from_evidence (P : ActinPolymerizationForceGenerationPackage) (E : ActinPolymerizationForceGenerationEvidence P) : ActinPolymerizationForceGenerationClosed P := by
  exact And.intro E.actinNucleationClosed
    (And.intro E.filamentElongationClosed
      (And.intro E.branchingProfilinClosed
        (And.intro E.retrogradeFlowClosed
          (And.intro E.protrusiveForceClosed E.lamellipodiumFormationClosed))))

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse