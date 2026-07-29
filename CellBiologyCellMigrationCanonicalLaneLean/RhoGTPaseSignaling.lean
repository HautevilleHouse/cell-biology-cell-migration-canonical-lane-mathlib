import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure RhoGTPaseSignalingPackage where
  cdc42Activation : Prop
  rac1Activation : Prop
  rhoAActivation : Prop
  signalingCrossTalk : Prop

structure RhoGTPaseSignalingEvidence (R : RhoGTPaseSignalingPackage) where
  cdc42ActivationClosed : R.cdc42Activation
  rac1ActivationClosed : R.rac1Activation
  rhoAActivationClosed : R.rhoAActivation
  signalingCrossTalkClosed : R.signalingCrossTalk

def RhoGTPaseSignalingClosed (R : RhoGTPaseSignalingPackage) : Prop :=
  R.cdc42Activation ∧ R.rac1Activation ∧
  R.rhoAActivation ∧ R.signalingCrossTalk

theorem rho_gtpase_signaling_closed_from_evidence
    (R : RhoGTPaseSignalingPackage) (E : RhoGTPaseSignalingEvidence R) :
    RhoGTPaseSignalingClosed R := by
  exact And.intro E.cdc42ActivationClosed
    (And.intro E.rac1ActivationClosed
      (And.intro E.rhoAActivationClosed E.signalingCrossTalkClosed))

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse