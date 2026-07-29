import CellBiologyCellMigrationCanonicalLaneLean.CellAdhesion

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure CytoskeletonDynamicsPackage {C : CellAdhesionPackage S} where
  actinPolymerization : Prop
  myosinContraction : Prop
  microtubuleOrganization : Prop
  actinTurnover : Prop
  cytoskeletalReorganization : Prop

structure CytoskeletonDynamicsEvidence {C : CellAdhesionPackage S}
    (Cy : CytoskeletonDynamicsPackage C) where
  actinPolymerizationClosed : Cy.actinPolymerization
  myosinContractionClosed : Cy.myosinContraction
  microtubuleOrganizationClosed : Cy.microtubuleOrganization
  actinTurnoverClosed : Cy.actinTurnover
  cytoskeletalReorganizationClosed : Cy.cytoskeletalReorganization

def CytoskeletonDynamicsClosed {C : CellAdhesionPackage S}
    (Cy : CytoskeletonDynamicsPackage C) : Prop :=
  Cy.actinPolymerization ∧ Cy.myosinContraction ∧ Cy.microtubuleOrganization ∧
  Cy.actinTurnover ∧ Cy.cytoskeletalReorganization

theorem cytoskeleton_dynamics_closed_from_evidence {C : CellAdhesionPackage S}
    (Cy : CytoskeletonDynamicsPackage C) (E : CytoskeletonDynamicsEvidence Cy) :
    CytoskeletonDynamicsClosed Cy := by
  exact And.intro E.actinPolymerizationClosed
    (And.intro E.myosinContractionClosed
      (And.intro E.microtubuleOrganizationClosed
        (And.intro E.actinTurnoverClosed E.cytoskeletalReorganizationClosed)))

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse