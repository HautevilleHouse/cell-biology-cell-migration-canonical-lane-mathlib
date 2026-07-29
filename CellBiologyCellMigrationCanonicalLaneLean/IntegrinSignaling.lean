import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure IntegrinSignalingPackage where
  receptorActivation : Prop
  focalAdhesionAssembly : Prop
  downstreamKinaseCascade : Prop
  tractionForceGeneration : Prop

structure IntegrinSignalingEvidence (S : IntegrinSignalingPackage) where
  receptorActivationClosed : S.receptorActivation
  focalAdhesionAssemblyClosed : S.focalAdhesionAssembly
  downstreamKinaseCascadeClosed : S.downstreamKinaseCascade
  tractionForceGenerationClosed : S.tractionForceGeneration

def IntegrinSignalingClosed (S : IntegrinSignalingPackage) : Prop :=
  S.receptorActivation ∧ S.focalAdhesionAssembly ∧
  S.downstreamKinaseCascade ∧ S.tractionForceGeneration

theorem integrin_signaling_closed_from_evidence
    (S : IntegrinSignalingPackage) (E : IntegrinSignalingEvidence S) :
    IntegrinSignalingClosed S := by
  exact And.intro E.receptorActivationClosed
    (And.intro E.focalAdhesionAssemblyClosed
      (And.intro E.downstreamKinaseCascadeClosed E.tractionForceGenerationClosed))

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse