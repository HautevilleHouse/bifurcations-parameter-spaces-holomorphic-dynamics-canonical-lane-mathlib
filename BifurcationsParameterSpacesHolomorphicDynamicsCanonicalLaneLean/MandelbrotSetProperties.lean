import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean

structure MandelbrotSetPackage (P : ParameterSpacePackage) where
  mandelbrotSet : Set P.parameterType
  connectivity : Prop
  localConnectivity : Prop
  hyperbolicity : Prop

structure MandelbrotSetEvidence {P : ParameterSpacePackage}
    (M : MandelbrotSetPackage P) where
  connectivityClosed : M.connectivity
  localConnectivityClosed : M.localConnectivity
  hyperbolicityClosed : M.hyperbolicity

def MandelbrotSetClosed {P : ParameterSpacePackage}
    (M : MandelbrotSetPackage P) : Prop :=
  M.connectivity ∧ M.localConnectivity ∧ M.hyperbolicity

theorem mandelbrot_set_closed_from_evidence {P : ParameterSpacePackage}
    (M : MandelbrotSetPackage P) (E : MandelbrotSetEvidence M) :
    MandelbrotSetClosed M := by
  exact And.intro E.connectivityClosed
    (And.intro E.localConnectivityClosed E.hyperbolicityClosed)

end BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean
end HautevilleHouse
