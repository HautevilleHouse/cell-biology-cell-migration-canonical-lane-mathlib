import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure CytoskeletalDynamicsPackage where
  actinPolymerization : Prop
  myosinIIContraction : Prop
  microtubuleGuidance : Prop
  focalAdhesionTurnover : Prop

structure CytoskeletalDynamicsEvidence (C : CytoskeletalDynamicsPackage) where
  actinPolymerizationClosed : C.actinPolymerization
  myosinIIContractionClosed : C.myosinIIContraction
  microtubuleGuidanceClosed : C.microtubuleGuidance
  focalAdhesionTurnoverClosed : C.focalAdhesionTurnover

def CytoskeletalDynamicsClosed (C : CytoskeletalDynamicsPackage) : Prop :=
  C.actinPolymerization ∧ C.myosinIIContraction ∧
  C.microtubuleGuidance ∧ C.focalAdhesionTurnover

theorem cytoskeletal_dynamics_closed_from_evidence
    (C : CytoskeletalDynamicsPackage) (E : CytoskeletalDynamicsEvidence C) :
    CytoskeletalDynamicsClosed C := by
  exact And.intro E.actinPolymerizationClosed
    (And.intro E.myosinIIContractionClosed
      (And.intro E.microtubuleGuidanceClosed E.focalAdhesionTurnoverClosed))

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse