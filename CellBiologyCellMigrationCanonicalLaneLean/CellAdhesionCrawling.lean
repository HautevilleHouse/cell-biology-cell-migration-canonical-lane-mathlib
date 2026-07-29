import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure CellAdhesionCrawlingPackage where
  adhesionDynamics : Type u
  integrinBinding : Prop
  focalAdhesionAssembly : Prop
  actinPolymerization : Prop
  tractionGeneration : Prop
  cellBodyTranslocation : Prop

structure CellAdhesionCrawlingEvidence (P : CellAdhesionCrawlingPackage) where
  integrinBindingClosed : P.integrinBinding
  focalAdhesionAssemblyClosed : P.focalAdhesionAssembly
  actinPolymerizationClosed : P.actinPolymerization
  tractionGenerationClosed : P.tractionGeneration
  cellBodyTranslocationClosed : P.cellBodyTranslocation

def CellAdhesionCrawlingClosed (P : CellAdhesionCrawlingPackage) : Prop :=
  P.integrinBinding ∧ P.focalAdhesionAssembly ∧ P.actinPolymerization ∧ P.tractionGeneration ∧ P.cellBodyTranslocation

theorem cell_adhesion_crawling_closed_from_evidence (P : CellAdhesionCrawlingPackage) (E : CellAdhesionCrawlingEvidence P) : CellAdhesionCrawlingClosed P := by
  exact And.intro E.integrinBindingClosed
    (And.intro E.focalAdhesionAssemblyClosed
      (And.intro E.actinPolymerizationClosed
        (And.intro E.tractionGenerationClosed E.cellBodyTranslocationClosed)))

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse