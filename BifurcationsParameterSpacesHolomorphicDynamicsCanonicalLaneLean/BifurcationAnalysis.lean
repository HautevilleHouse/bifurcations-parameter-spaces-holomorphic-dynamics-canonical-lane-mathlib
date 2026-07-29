import BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean.BifurcationHolomorphicDynamics

namespace HautevilleHouse
namespace BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean

structure BifurcationAnalysis {P : BifurcationParameterSpace}
    (D : BifurcationHolomorphicDynamics P) where
  mandelbrotSetApproximation : Prop
  bifurcationMeasure : Prop
  stabilityRegionClassification : Prop
  renormalizationConvergence : Prop

structure BifurcationAnalysisEvidence {P : BifurcationParameterSpace}
    {D : BifurcationHolomorphicDynamics P} (A : BifurcationAnalysis D) where
  mandelbrotSetApproximationClosed : A.mandelbrotSetApproximation
  bifurcationMeasureClosed : A.bifurcationMeasure
  stabilityRegionClassificationClosed : A.stabilityRegionClassification
  renormalizationConvergenceClosed : A.renormalizationConvergence

def BifurcationAnalysisClosed {P : BifurcationParameterSpace}
    {D : BifurcationHolomorphicDynamics P} (A : BifurcationAnalysis D) : Prop :=
  A.mandelbrotSetApproximation ∧ A.bifurcationMeasure ∧
  A.stabilityRegionClassification ∧ A.renormalizationConvergence

theorem bifurcation_analysis_closed_from_evidence
    {P : BifurcationParameterSpace} {D : BifurcationHolomorphicDynamics P}
    (A : BifurcationAnalysis D) (E : BifurcationAnalysisEvidence A) :
    BifurcationAnalysisClosed A := by
  exact And.intro E.mandelbrotSetApproximationClosed
    (And.intro E.bifurcationMeasureClosed
      (And.intro E.stabilityRegionClassificationClosed E.renormalizationConvergenceClosed))

end BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean
end HautevilleHouse