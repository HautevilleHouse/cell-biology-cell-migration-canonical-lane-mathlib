import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure RhoGtpaseSignalingCircuitPackage where
  rhoActivation : Type u
  racActivation : Prop
  cdc42Activation : Prop
  downstreamKinases : Prop
  cytoskeletalDynamics : Prop
  feedbackLoops : Prop

structure RhoGtpaseSignalingCircuitEvidence (P : RhoGtpaseSignalingCircuitPackage) where
  rhoActivationClosed : P.rhoActivation
  racActivationClosed : P.racActivation
  cdc42ActivationClosed : P.cdc42Activation
  downstreamKinasesClosed : P.downstreamKinases
  cytoskeletalDynamicsClosed : P.cytoskeletalDynamics
  feedbackLoopsClosed : P.feedbackLoops

def RhoGtpaseSignalingCircuitClosed (P : RhoGtpaseSignalingCircuitPackage) : Prop :=
  P.rhoActivation ∧ P.racActivation ∧ P.cdc42Activation ∧ P.downstreamKinases ∧ P.cytoskeletalDynamics ∧ P.feedbackLoops

theorem rho_gtpase_signaling_circuit_closed_from_evidence (P : RhoGtpaseSignalingCircuitPackage) (E : RhoGtpaseSignalingCircuitEvidence P) : RhoGtpaseSignalingCircuitClosed P := by
  exact And.intro E.rhoActivationClosed
    (And.intro E.racActivationClosed
      (And.intro E.cdc42ActivationClosed
        (And.intro E.downstreamKinasesClosed
          (And.intro E.cytoskeletalDynamicsClosed E.feedbackLoopsClosed))))

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse