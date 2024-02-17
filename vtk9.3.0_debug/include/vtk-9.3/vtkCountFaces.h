// SPDX-FileCopyrightText: Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
// SPDX-License-Identifier: BSD-3-Clause

/**
 * @class   vtkCountFaces
 * @brief   Add a cell data array containing the number of faces
 * per cell.
 *
 *
 * This filter adds a cell data array containing the number of faces per cell.
 */

#ifndef vtkCountFaces_h
#define vtkCountFaces_h

#include "vtkFiltersGeneralModule.h" // For export macro
#include "vtkPassInputTypeAlgorithm.h"

VTK_ABI_NAMESPACE_BEGIN
class VTKFILTERSGENERAL_EXPORT vtkCountFaces : public vtkPassInputTypeAlgorithm
{
public:
  static vtkCountFaces* New();
  vtkTypeMacro(vtkCountFaces, vtkPassInputTypeAlgorithm);
  void PrintSelf(ostream& os, vtkIndent indent) override;

  ///@{
  /**
   * The name of the new output array containing the face counts.
   */
  vtkSetStringMacro(OutputArrayName);
  vtkGetStringMacro(OutputArrayName);
  ///@}

protected:
  vtkCountFaces();
  ~vtkCountFaces() override;

  int RequestData(vtkInformation* request, vtkInformationVector** inInfoVec,
    vtkInformationVector* outInfoVec) override;

  int FillOutputPortInformation(int port, vtkInformation* info) override;
  int FillInputPortInformation(int port, vtkInformation* info) override;

  char* OutputArrayName;

private:
  vtkCountFaces(const vtkCountFaces&) = delete;
  void operator=(const vtkCountFaces&) = delete;
};

VTK_ABI_NAMESPACE_END
#endif // vtkCountFaces_h
