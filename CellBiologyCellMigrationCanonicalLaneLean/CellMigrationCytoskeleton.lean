import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure CellMigrationCytoskeletonPackage where
  actinPolymerization : Prop
  myosinContraction : Prop
  microtubuleGuidance : Prop
  focalAdhesionDynamics : Prop
  protrusionFormation : Prop

structure CellMigrationCytoskeletonEvidence (C : CellMigrationCytoskeletonPackage) where
  actinPolymerizationClosed : C.actinPolymerization
  myosinContractionClosed : C.myosinContraction
  microtubuleGuidanceClosed : C.microtubuleGuidance
  focalAdhesionDynamicsClosed : C.focalAdhesionDynamics
  protrusionFormationClosed : C.protrusionFormation

def CellMigrationCytoskeletonClosed (C : CellMigrationCytoskeletonPackage) : Prop :=
  C.actinPolymerization ∧ C.myosinContraction ∧
  C.microtubuleGuidance ∧ C.focalAdhesionDynamics ∧ C.protrusionFormation

theorem cell_migration_cytoskeleton_closed_from_evidence
    (C : CellMigrationCytoskeletonPackage) (E : CellMigrationCytoskeletonEvidence C) :
    CellMigrationCytoskeletonClosed C :=
  And.intro E.actinPolymerizationClosed
    (And.intro E.myosinContractionClosed
      (And.intro E.microtubuleGuidanceClosed
        (And.intro E.focalAdhesionDynamicsClosed E.protrusionFormationClosed)))

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse