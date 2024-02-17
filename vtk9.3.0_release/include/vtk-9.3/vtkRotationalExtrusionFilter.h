// SPDX-FileCopyrightText: Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
// SPDX-License-Identifier: BSD-3-Clause
/**
 * @class   vtkRotationalExtrusionFilter
 * @brief   sweep polygonal data creating "skirt" from free edges and lines, and lines from vertices
 *
 * vtkRotationalExtrusionFilter is a modeling filter. It takes polygonal
 * data as input and generates polygonal data on output. The input dataset
 * is swept around an axis to create new polygonal primitives. These
 * primitives form a "skirt" or swept surface. For example, sweeping a
 * line results in a cylindrical shell, and sweeping a circle creates a
 * torus.
 *
 * There are a number of control parameters for this filter. You can
 * control whether the sweep of a 2D object (i.e., polygon or triangle
 * strip) is capped with the generating geometry via the "Capping" instance
 * variable. Also, you can control the angle of rotation, whether
 * translation along the axis is performed along with the rotation, and around
 * which axis this is done.
 * (Translation is useful for creating "springs".) You also can adjust
 * the radius of the generating geometry using the "DeltaRotation" instance
 * variable.
 *
 * The skirt is generated by locating certain topological features. Free
 * edges (edges of polygons or triangle strips only used by one polygon or
 * triangle strips) generate surfaces. This is true also of lines or
 * polylines. Vertices generate lines.
 *
 * This filter can be used to model axisymmetric objects like cylinders,
 * bottles, and wine glasses; or translational/rotational symmetric objects
 * like springs or corkscrews.
 *
 * @warning
 * If the object sweeps 360 degrees, radius does not vary, and the object
 * does not translate, capping is not performed. This is because the cap
 * is unnecessary.
 *
 * @warning
 * Some polygonal objects have no free edges (e.g., sphere). When swept,
 * this will result in two separate surfaces if capping is on, or no surface
 * if capping is off.
 *
 * @sa
 * vtkLinearExtrusionFilter
 */

#ifndef vtkRotationalExtrusionFilter_h
#define vtkRotationalExtrusionFilter_h

#include "vtkFiltersModelingModule.h" // For export macro
#include "vtkPolyDataAlgorithm.h"

VTK_ABI_NAMESPACE_BEGIN
class VTKFILTERSMODELING_EXPORT vtkRotationalExtrusionFilter : public vtkPolyDataAlgorithm
{
public:
  vtkTypeMacro(vtkRotationalExtrusionFilter, vtkPolyDataAlgorithm);
  void PrintSelf(ostream& os, vtkIndent indent) override;

  /**
   * Create object with capping on, angle of 360 degrees, resolution = 12, and
   * no translation along z-axis.
   * vector (0,0,1), and point (0,0,0).
   */
  static vtkRotationalExtrusionFilter* New();

  ///@{
  /**
   * Set/Get resolution of sweep operation. Resolution controls the number
   * of intermediate node points.
   */
  vtkSetClampMacro(Resolution, int, 1, VTK_INT_MAX);
  vtkGetMacro(Resolution, int);
  ///@}

  ///@{
  /**
   * Turn on/off the capping of the skirt.
   */
  vtkSetMacro(Capping, vtkTypeBool);
  vtkGetMacro(Capping, vtkTypeBool);
  vtkBooleanMacro(Capping, vtkTypeBool);
  ///@}

  ///@{
  /**
   * Set/Get angle of rotation.
   */
  vtkSetMacro(Angle, double);
  vtkGetMacro(Angle, double);
  ///@}

  ///@{
  /**
   * Set/Get total amount of translation along the rotation axis.
   */
  vtkSetMacro(Translation, double);
  vtkGetMacro(Translation, double);
  ///@}

  ///@{
  /**
   * Set/Get change in radius during sweep process.
   */
  vtkSetMacro(DeltaRadius, double);
  vtkGetMacro(DeltaRadius, double);
  ///@}

  ///@{
  /**
   * Set/Get the axis around which the rotation is done.
   */
  vtkSetVector3Macro(RotationAxis, double);
  vtkGetVector3Macro(RotationAxis, double);
  ///@}

protected:
  vtkRotationalExtrusionFilter();
  ~vtkRotationalExtrusionFilter() override = default;

  int RequestData(vtkInformation*, vtkInformationVector**, vtkInformationVector*) override;
  int Resolution;
  vtkTypeBool Capping;
  double Angle;
  double Translation;
  double DeltaRadius;
  double RotationAxis[3] = { 0, 0, 1 };

private:
  vtkRotationalExtrusionFilter(const vtkRotationalExtrusionFilter&) = delete;
  void operator=(const vtkRotationalExtrusionFilter&) = delete;
};

VTK_ABI_NAMESPACE_END
#endif