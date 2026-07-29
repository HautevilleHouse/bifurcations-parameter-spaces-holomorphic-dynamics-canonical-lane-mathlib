import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean

structure ComplexParameterSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  complexStructure : ComplexStructure carrier
  dimension : ℕ
  isConnected : Prop

def ParameterSpaceClosed (P : ComplexParameterSpace) : Prop :=
  P.isConnected

structure ParameterSpaceEvidence (P : ComplexParameterSpace) where
  connectedClosed : P.isConnected

theorem parameter_space_closed_from_evidence (P : ComplexParameterSpace) (E : ParameterSpaceEvidence P) :
    ParameterSpaceClosed P := by
  exact E.connectedClosed

end BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean
end HautevilleHouse