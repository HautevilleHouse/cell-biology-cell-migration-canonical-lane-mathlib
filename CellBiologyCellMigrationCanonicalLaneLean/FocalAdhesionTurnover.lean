import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure FocalAdhesionDynamicsPackage where
  nascentAdhesionFormation : Prop
  forceDependentReinforcement : Prop
  integrinClustering : Prop
  vinculinRecruitment : Prop
  disassemblySignaling : Prop

structure FocalAdhesionDynamicsEvidence (F : FocalAdhesionDynamicsPackage) where
  nascentAdhesionFormationClosed : F.nascentAdhesionFormation
  forceDependentReinforcementClosed : F.forceDependentReinforcement
  integrinClusteringClosed : F.integrinClustering
  vinculinRecruitmentClosed : F.vinculinRecruitment
  disassemblySignalingClosed : F.disassemblySignaling

def FocalAdhesionDynamicsClosed (F : FocalAdhesionDynamicsPackage) : Prop :=
  F.nascentAdhesionFormation ∧ F.forceDependentReinforcement ∧
  F.integrinClustering ∧ F.vinculinRecruitment ∧ F.disassemblySignaling

theorem focal_adhesion_dynamics_closed_from_evidence (F : FocalAdhesionDynamicsPackage)
    (E : FocalAdhesionDynamicsEvidence F) : FocalAdhesionDynamicsClosed F := by
  exact And.intro E.nascentAdhesionFormationClosed (And.intro E.forceDependentReinforcementClosed
    (And.intro E.integrinClusteringClosed (And.intro E.vinculinRecruitmentClosed
      E.disassemblySignalingClosed)))

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse