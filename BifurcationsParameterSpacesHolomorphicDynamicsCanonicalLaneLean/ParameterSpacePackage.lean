import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean

structure ParameterSpacePackage where
  parameterType : Type u
  topology : TopologicalSpace parameterType
  holomorphicFamily : Prop
  bifurcationDiagram : Prop
  stabilityRegions : Prop

structure ParameterSpaceEvidence (P : ParameterSpacePackage) where
  holomorphicFamilyClosed : P.holomorphicFamily
  bifurcationDiagramClosed : P.bifurcationDiagram
  stabilityRegionsClosed : P.stabilityRegions

def ParameterSpaceClosed (P : ParameterSpacePackage) : Prop :=
  P.holomorphicFamily ∧ P.bifurcationDiagram ∧ P.stabilityRegions

theorem parameter_space_closed_from_evidence (P : ParameterSpacePackage)
    (E : ParameterSpaceEvidence P) : ParameterSpaceClosed P := by
  exact And.intro E.holomorphicFamilyClosed
    (And.intro E.bifurcationDiagramClosed E.stabilityRegionsClosed)

end BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean
end HautevilleHouse
