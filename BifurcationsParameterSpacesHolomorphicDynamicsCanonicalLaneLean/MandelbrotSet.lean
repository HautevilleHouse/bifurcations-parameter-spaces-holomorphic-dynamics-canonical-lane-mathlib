import canonicalLaneMathlib.AdmissibleClass
import BifurcationsParameterSpacesHolomorphicDynamics.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsParameterSpacesHolomorphicDynamics

structure MandelbrotSetPackage where
  connectednessConjecture : Prop
  hyperbolicityConjecture : Prop
  localConnectivity : Prop
  MLocalConnectivity : Prop

def MandelbrotSetClosed (M : MandelbrotSetPackage) : Prop :=
  M.connectednessConjecture ∧ M.hyperbolicityConjecture ∧
  M.localConnectivity ∧ M.MLocalConnectivity

structure MandelbrotSetEvidence (M : MandelbrotSetPackage) where
  connectednessClosed : M.connectednessConjecture
  hyperbolicityClosed : M.hyperbolicityConjecture
  localConnectivityClosed : M.localConnectivity
  MLocalConnectivityClosed : M.MLocalConnectivity

theorem mandelbrot_set_closed_from_evidence (M : MandelbrotSetPackage)
    (E : MandelbrotSetEvidence M) : MandelbrotSetClosed M := by
  exact And.intro E.connectednessClosed (And.intro E.hyperbolicityClosed
    (And.intro E.localConnectivityClosed E.MLocalConnectivityClosed))

end BifurcationsParameterSpacesHolomorphicDynamics
end HautevilleHouse