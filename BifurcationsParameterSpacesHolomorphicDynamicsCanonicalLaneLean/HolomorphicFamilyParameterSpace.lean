import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationParameterSpacesHolomorphicDynamicsCanonicalLaneLean

structure HolomorphicFamilyParameterSpace where
  parameterSpace : Type u
  fiber : Type v
  familyMap : parameterSpace → (fiber → fiber)
  analyticDependence : Prop
  properness : Prop
  compactFiber : Prop

def HolomorphicFamilyParameterSpaceClosed (H : HolomorphicFamilyParameterSpace) : Prop :=
  H.analyticDependence ∧ H.properness ∧ H.compactFiber

structure HolomorphicFamilyParameterSpaceEvidence (H : HolomorphicFamilyParameterSpace) where
  analyticDependenceClosed : H.analyticDependence
  propernessClosed : H.properness
  compactFiberClosed : H.compactFiber

theorem holomorphic_family_parameter_space_closed_from_evidence
    (H : HolomorphicFamilyParameterSpace) (E : HolomorphicFamilyParameterSpaceEvidence H) :
    HolomorphicFamilyParameterSpaceClosed H := by
  exact And.intro E.analyticDependenceClosed (And.intro E.propernessClosed E.compactFiberClosed)

end BifurcationParameterSpacesHolomorphicDynamicsCanonicalLaneLean
end HautevilleHouse