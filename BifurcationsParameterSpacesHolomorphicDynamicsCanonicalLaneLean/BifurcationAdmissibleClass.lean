import BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean.BifurcationObjects

namespace HautevilleHouse
namespace BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean

structure AdmissibleClass where
  object : BifurcationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BifurcationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean
end HautevilleHouse