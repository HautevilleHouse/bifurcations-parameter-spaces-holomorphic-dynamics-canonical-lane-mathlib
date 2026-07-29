import canonicalLaneMathlib.AdmissibleClass
import BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean

structure HolomorphicFamily where
  parameterSpace : Type u
  fiber : parameterSpace → Type v
  holomorphicStructure : ∀ c : parameterSpace, ComplexManifold (fiber c)
  familyHolomorphic : Prop
  properness : Prop

def BifParamsWitnessClosed (O : BifParamsAdmittedObject) : Prop :=
  O.bifurcationStructure

theorem witness_closed_from_family (F : HolomorphicFamily) (h : F.familyHolomorphic ∧ F.properness) : BifParamsWitnessClosed (BifParamsAdmittedObject.mk (F.parameterSpace) (by infer_instance) F (fun _ => F.familyHolomorphic) h.1) :=
  h.1

end BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean
end HautevilleHouse