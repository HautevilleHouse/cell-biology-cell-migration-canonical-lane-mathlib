import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure RhoSignalingPackage where
  rhoAActivation : Prop
  rac1Activation : Prop
  cdc42Activation : Prop
  downstreamEffect : Prop

structure RhoSignalingEvidence (R : RhoSignalingPackage) where
  rhoAActivationClosed : R.rhoAActivation
  rac1ActivationClosed : R.rac1Activation
  cdc42ActivationClosed : R.cdc42Activation
  downstreamEffectClosed : R.downstreamEffect

def RhoSignalingClosed (R : RhoSignalingPackage) : Prop :=
  R.rhoAActivation ∧ R.rac1Activation ∧
  R.cdc42Activation ∧ R.downstreamEffect

theorem rho_signaling_closed_from_evidence
    (R : RhoSignalingPackage) (E : RhoSignalingEvidence R) :
    RhoSignalingClosed R := by
  exact And.intro E.rhoAActivationClosed
    (And.intro E.rac1ActivationClosed
      (And.intro E.cdc42ActivationClosed E.downstreamEffectClosed))

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse
