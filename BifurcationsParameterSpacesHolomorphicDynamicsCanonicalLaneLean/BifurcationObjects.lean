import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean

structure BifurcationSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  complexStructure : Type

structure BifurcationAdmittedObject where
  space : BifurcationSpace
  parameterSpaceDimension : ℕ
  holomorphicFamily : Prop
  compactParameterSpace : Prop
  bifurcationEndpoint : Prop
  conclusion : bifurcationEndpoint

def BifurcationWitnessClosed (O : BifurcationAdmittedObject) : Prop :=
  O.bifurcationEndpoint

end BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean
end HautevilleHouse