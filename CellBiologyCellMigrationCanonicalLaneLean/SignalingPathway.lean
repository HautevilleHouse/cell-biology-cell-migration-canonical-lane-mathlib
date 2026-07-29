import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure SignalingPathwayPackage where
  rhoGTPaseActivation : Prop
  racGTPaseActivation : Prop
  cdc42GTPaseActivation : Prop
  pI3Ksignaling : Prop
  mAPKsignaling : Prop

structure SignalingPathwayEvidence (S : SignalingPathwayPackage) where
  rhoGTPaseActivationClosed : S.rhoGTPaseActivation
  racGTPaseActivationClosed : S.racGTPaseActivation
  cdc42GTPaseActivationClosed : S.cdc42GTPaseActivation
  pI3KsignalingClosed : S.pI3Ksignaling
  mAPKsignalingClosed : S.mAPKsignaling

def SignalingPathwayClosed (S : SignalingPathwayPackage) : Prop :=
  S.rhoGTPaseActivation ∧ S.racGTPaseActivation ∧ S.cdc42GTPaseActivation ∧ S.pI3Ksignaling ∧ S.mAPKsignaling

theorem signaling_pathway_closed_from_evidence (S : SignalingPathwayPackage) (E : SignalingPathwayEvidence S) : SignalingPathwayClosed S :=
  And.intro E.rhoGTPaseActivationClosed (And.intro E.racGTPaseActivationClosed (And.intro E.cdc42GTPaseActivationClosed (And.intro E.pI3KsignalingClosed E.mAPKsignalingClosed)))

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse