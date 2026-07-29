import canonicalLaneMathlib.AdmissibleClass
import BifurcationsParameterSpacesHolomorphicDynamics.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsParameterSpacesHolomorphicDynamics

structure JuliaSetBifurcationPackage where
  juliaSetContinuity : Prop
  parabolicBifurcations : Prop
  lansfordDynamics : Prop
  creeping : Prop

def JuliaSetBifurcationClosed (J : JuliaSetBifurcationPackage) : Prop :=
  J.juliaSetContinuity ∧ J.parabolicBifurcations ∧
  J.lansfordDynamics ∧ J.creeping

structure JuliaSetBifurcationEvidence (J : JuliaSetBifurcationPackage) where
  juliaSetContinuityClosed : J.juliaSetContinuity
  parabolicBifurcationsClosed : J.parabolicBifurcations
  lansfordDynamicsClosed : J.lansfordDynamics
  creepingClosed : J.creeping

theorem julia_set_bifurcation_closed_from_evidence (J : JuliaSetBifurcationPackage)
    (E : JuliaSetBifurcationEvidence J) : JuliaSetBifurcationClosed J := by
  exact And.intro E.juliaSetContinuityClosed (And.intro E.parabolicBifurcationsClosed
    (And.intro E.lansfordDynamicsClosed E.creepingClosed))

end BifurcationsParameterSpacesHolomorphicDynamics
end HautevilleHouse