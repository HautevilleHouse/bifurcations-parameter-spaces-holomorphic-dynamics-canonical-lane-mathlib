import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BifParamsAdmittedObject where
  parameterSpace : Type
  topology : TopologicalSpace parameterSpace
  holomorphicFamily : Type
  familyMorphism : Type
  bifurcationStructure : Prop
  conclusion : bifurcationStructure

structure AdmissibleClass where
  object : BifParamsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BifParamsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

theorem admitted_closure_from_object (A : AdmissibleClass) (h : BifParamsWitnessClosed A.object) : admittedClosure A :=
  And.intro h A.gateWitness

end BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean
end HautevilleHouse