QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    ShareCameraQtDriver.cxx \
    ShareCameraQt.cxx \


HEADERS += \
    ShareCameraQt.h \

FORMS += \
    ShareCameraQt.ui
    
CONFIG(debug, debug|release) {

INCLUDEPATH = E:/openSource/librarys/vtk9.3.0_Dll/vtk9.3.0_debug/include/vtk-9.3/
LIBS+= -L$$quote("E:/openSource/librarys/vtk9.3.0_Dll/vtk9.3.0_debug/lib/")
LIBS +=  vtkcgns-9.3d.lib\
vtkChartsCore-9.3d.lib\
vtkCommonColor-9.3d.lib\
vtkCommonComputationalGeometry-9.3d.lib\
vtkCommonCore-9.3d.lib\
vtkCommonDataModel-9.3d.lib\
vtkCommonExecutionModel-9.3d.lib\
vtkCommonMath-9.3d.lib\
vtkCommonMisc-9.3d.lib\
vtkCommonSystem-9.3d.lib\
vtkCommonTransforms-9.3d.lib\
vtkDICOMParser-9.3d.lib\
vtkDomainsChemistry-9.3d.lib\
vtkDomainsChemistryOpenGL2-9.3d.lib\
vtkdoubleconversion-9.3d.lib\
vtkexodusII-9.3d.lib\
vtkexpat-9.3d.lib\
vtkFiltersAMR-9.3d.lib\
vtkFiltersCellGrid-9.3d.lib\
vtkFiltersCore-9.3d.lib\
vtkFiltersExtraction-9.3d.lib\
vtkFiltersFlowPaths-9.3d.lib\
vtkFiltersGeneral-9.3d.lib\
vtkFiltersGeneric-9.3d.lib\
vtkFiltersGeometry-9.3d.lib\
vtkFiltersGeometryPreview-9.3d.lib\
vtkFiltersHybrid-9.3d.lib\
vtkFiltersHyperTree-9.3d.lib\
vtkFiltersImaging-9.3d.lib\
vtkFiltersModeling-9.3d.lib\
vtkFiltersParallel-9.3d.lib\
vtkFiltersParallelImaging-9.3d.lib\
vtkFiltersPoints-9.3d.lib\
vtkFiltersProgrammable-9.3d.lib\
vtkFiltersReduction-9.3d.lib\
vtkFiltersSelection-9.3d.lib\
vtkFiltersSMP-9.3d.lib\
vtkFiltersSources-9.3d.lib\
vtkFiltersStatistics-9.3d.lib\
vtkFiltersTensor-9.3d.lib\
vtkFiltersTexture-9.3d.lib\
vtkFiltersTopology-9.3d.lib\
vtkFiltersVerdict-9.3d.lib\
vtkfmt-9.3d.lib\
vtkfreetype-9.3d.lib\
vtkGeovisCore-9.3d.lib\
vtkgl2ps-9.3d.lib\
vtkglew-9.3d.lib\
vtkGUISupportMFC-9.3d.lib\
vtkGUISupportQt-9.3d.lib\
vtkGUISupportQtQuick-9.3d.lib\
vtkGUISupportQtSQL-9.3d.lib\
vtkhdf5-9.3d.lib\
vtkhdf5_hl-9.3d.lib\
vtkImagingColor-9.3d.lib\
vtkImagingCore-9.3d.lib\
vtkImagingFourier-9.3d.lib\
vtkImagingGeneral-9.3d.lib\
vtkImagingHybrid-9.3d.lib\
vtkImagingMath-9.3d.lib\
vtkImagingMorphological-9.3d.lib\
vtkImagingSources-9.3d.lib\
vtkImagingStatistics-9.3d.lib\
vtkImagingStencil-9.3d.lib\
vtkInfovisCore-9.3d.lib\
vtkInfovisLayout-9.3d.lib\
vtkInteractionImage-9.3d.lib\
vtkInteractionStyle-9.3d.lib\
vtkInteractionWidgets-9.3d.lib\
vtkIOAMR-9.3d.lib\
vtkIOAsynchronous-9.3d.lib\
vtkIOCellGrid-9.3d.lib\
vtkIOCesium3DTiles-9.3d.lib\
vtkIOCGNSReader-9.3d.lib\
vtkIOChemistry-9.3d.lib\
vtkIOCityGML-9.3d.lib\
vtkIOCONVERGECFD-9.3d.lib\
vtkIOCore-9.3d.lib\
vtkIOEnSight-9.3d.lib\
vtkIOExodus-9.3d.lib\
vtkIOExport-9.3d.lib\
vtkIOExportGL2PS-9.3d.lib\
vtkIOExportPDF-9.3d.lib\
vtkIOFLUENTCFF-9.3d.lib\
vtkIOGeometry-9.3d.lib\
vtkIOHDF-9.3d.lib\
vtkIOImage-9.3d.lib\
vtkIOImport-9.3d.lib\
vtkIOInfovis-9.3d.lib\
vtkIOIOSS-9.3d.lib\
vtkIOLegacy-9.3d.lib\
vtkIOLSDyna-9.3d.lib\
vtkIOMINC-9.3d.lib\
vtkIOMotionFX-9.3d.lib\
vtkIOMovie-9.3d.lib\
vtkIONetCDF-9.3d.lib\
vtkIOOggTheora-9.3d.lib\
vtkIOParallel-9.3d.lib\
vtkIOParallelXML-9.3d.lib\
vtkIOPLY-9.3d.lib\
vtkIOSegY-9.3d.lib\
vtkIOSQL-9.3d.lib\
vtkioss-9.3d.lib\
vtkIOTecplotTable-9.3d.lib\
vtkIOVeraOut-9.3d.lib\
vtkIOVideo-9.3d.lib\
vtkIOXML-9.3d.lib\
vtkIOXMLParser-9.3d.lib\
vtkjpeg-9.3d.lib\
vtkjsoncpp-9.3d.lib\
vtkkissfft-9.3d.lib\
vtklibharu-9.3d.lib\
vtklibproj-9.3d.lib\
vtklibxml2-9.3d.lib\
vtkloguru-9.3d.lib\
vtklz4-9.3d.lib\
vtklzma-9.3d.lib\
vtkmetaio-9.3d.lib\
vtknetcdf-9.3d.lib\
vtkogg-9.3d.lib\
vtkParallelCore-9.3d.lib\
vtkParallelDIY-9.3d.lib\
vtkpng-9.3d.lib\
vtkpugixml-9.3d.lib\
vtkRenderingAnnotation-9.3d.lib\
vtkRenderingCellGrid-9.3d.lib\
vtkRenderingContext2D-9.3d.lib\
vtkRenderingContextOpenGL2-9.3d.lib\
vtkRenderingCore-9.3d.lib\
vtkRenderingFreeType-9.3d.lib\
vtkRenderingGL2PSOpenGL2-9.3d.lib\
vtkRenderingHyperTreeGrid-9.3d.lib\
vtkRenderingImage-9.3d.lib\
vtkRenderingLabel-9.3d.lib\
vtkRenderingLICOpenGL2-9.3d.lib\
vtkRenderingLOD-9.3d.lib\
vtkRenderingOpenGL2-9.3d.lib\
vtkRenderingQt-9.3d.lib\
vtkRenderingSceneGraph-9.3d.lib\
vtkRenderingUI-9.3d.lib\
vtkRenderingVolume-9.3d.lib\
vtkRenderingVolumeOpenGL2-9.3d.lib\
vtkRenderingVtkJS-9.3d.lib\
vtksqlite-9.3d.lib\
vtksys-9.3d.lib\
vtkTestingRendering-9.3d.lib\
vtktheora-9.3d.lib\
vtktiff-9.3d.lib\
vtkverdict-9.3d.lib\
vtkViewsContext2D-9.3d.lib\
vtkViewsCore-9.3d.lib\
vtkViewsInfovis-9.3d.lib\
vtkViewsQt-9.3d.lib\
vtkWrappingTools-9.3d.lib\
vtkzlib-9.3d.lib

}else{
INCLUDEPATH = E:/openSource/librarys/vtk9.3.0_Dll/vtk9.3.0_release/include/vtk-9.3/
LIBS+= -L$$quote("E:/openSource/librarys/vtk9.3.0_Dll/vtk9.3.0_release/lib/")
LIBS +=  vtkcgns-9.3.lib\ 
vtkChartsCore-9.3.lib\ 
vtkCommonColor-9.3.lib\ 
vtkCommonComputationalGeometry-9.3.lib\ 
vtkCommonCore-9.3.lib\ 
vtkCommonDataModel-9.3.lib\ 
vtkCommonExecutionModel-9.3.lib\ 
vtkCommonMath-9.3.lib\ 
vtkCommonMisc-9.3.lib\ 
vtkCommonSystem-9.3.lib\ 
vtkCommonTransforms-9.3.lib\ 
vtkDICOMParser-9.3.lib\ 
vtkDomainsChemistry-9.3.lib\ 
vtkDomainsChemistryOpenGL2-9.3.lib\ 
vtkdoubleconversion-9.3.lib\ 
vtkexodusII-9.3.lib\ 
vtkexpat-9.3.lib\ 
vtkFiltersAMR-9.3.lib\ 
vtkFiltersCellGrid-9.3.lib\ 
vtkFiltersCore-9.3.lib\ 
vtkFiltersExtraction-9.3.lib\ 
vtkFiltersFlowPaths-9.3.lib\ 
vtkFiltersGeneral-9.3.lib\ 
vtkFiltersGeneric-9.3.lib\ 
vtkFiltersGeometry-9.3.lib\ 
vtkFiltersGeometryPreview-9.3.lib\ 
vtkFiltersHybrid-9.3.lib\ 
vtkFiltersHyperTree-9.3.lib\ 
vtkFiltersImaging-9.3.lib\ 
vtkFiltersModeling-9.3.lib\ 
vtkFiltersParallel-9.3.lib\ 
vtkFiltersParallelImaging-9.3.lib\ 
vtkFiltersPoints-9.3.lib\ 
vtkFiltersProgrammable-9.3.lib\ 
vtkFiltersReduction-9.3.lib\ 
vtkFiltersSelection-9.3.lib\ 
vtkFiltersSMP-9.3.lib\ 
vtkFiltersSources-9.3.lib\ 
vtkFiltersStatistics-9.3.lib\ 
vtkFiltersTensor-9.3.lib\ 
vtkFiltersTexture-9.3.lib\ 
vtkFiltersTopology-9.3.lib\ 
vtkFiltersVerdict-9.3.lib\ 
vtkfmt-9.3.lib\ 
vtkfreetype-9.3.lib\ 
vtkGeovisCore-9.3.lib\ 
vtkgl2ps-9.3.lib\ 
vtkglew-9.3.lib\ 
vtkGUISupportMFC-9.3.lib\ 
vtkGUISupportQt-9.3.lib\ 
vtkGUISupportQtQuick-9.3.lib\ 
vtkGUISupportQtSQL-9.3.lib\ 
vtkhdf5-9.3.lib\ 
vtkhdf5_hl-9.3.lib\ 
vtkImagingColor-9.3.lib\ 
vtkImagingCore-9.3.lib\ 
vtkImagingFourier-9.3.lib\ 
vtkImagingGeneral-9.3.lib\ 
vtkImagingHybrid-9.3.lib\ 
vtkImagingMath-9.3.lib\ 
vtkImagingMorphological-9.3.lib\ 
vtkImagingSources-9.3.lib\ 
vtkImagingStatistics-9.3.lib\ 
vtkImagingStencil-9.3.lib\ 
vtkInfovisCore-9.3.lib\ 
vtkInfovisLayout-9.3.lib\ 
vtkInteractionImage-9.3.lib\ 
vtkInteractionStyle-9.3.lib\ 
vtkInteractionWidgets-9.3.lib\ 
vtkIOAMR-9.3.lib\ 
vtkIOAsynchronous-9.3.lib\ 
vtkIOCellGrid-9.3.lib\ 
vtkIOCesium3DTiles-9.3.lib\ 
vtkIOCGNSReader-9.3.lib\ 
vtkIOChemistry-9.3.lib\ 
vtkIOCityGML-9.3.lib\ 
vtkIOCONVERGECFD-9.3.lib\ 
vtkIOCore-9.3.lib\ 
vtkIOEnSight-9.3.lib\ 
vtkIOExodus-9.3.lib\ 
vtkIOExport-9.3.lib\ 
vtkIOExportGL2PS-9.3.lib\ 
vtkIOExportPDF-9.3.lib\ 
vtkIOFLUENTCFF-9.3.lib\ 
vtkIOGeometry-9.3.lib\ 
vtkIOHDF-9.3.lib\ 
vtkIOImage-9.3.lib\ 
vtkIOImport-9.3.lib\ 
vtkIOInfovis-9.3.lib\ 
vtkIOIOSS-9.3.lib\ 
vtkIOLegacy-9.3.lib\ 
vtkIOLSDyna-9.3.lib\ 
vtkIOMINC-9.3.lib\ 
vtkIOMotionFX-9.3.lib\ 
vtkIOMovie-9.3.lib\ 
vtkIONetCDF-9.3.lib\ 
vtkIOOggTheora-9.3.lib\ 
vtkIOParallel-9.3.lib\ 
vtkIOParallelXML-9.3.lib\ 
vtkIOPLY-9.3.lib\ 
vtkIOSegY-9.3.lib\ 
vtkIOSQL-9.3.lib\ 
vtkioss-9.3.lib\ 
vtkIOTecplotTable-9.3.lib\ 
vtkIOVeraOut-9.3.lib\ 
vtkIOVideo-9.3.lib\ 
vtkIOXML-9.3.lib\ 
vtkIOXMLParser-9.3.lib\ 
vtkjpeg-9.3.lib\ 
vtkjsoncpp-9.3.lib\ 
vtkkissfft-9.3.lib\ 
vtklibharu-9.3.lib\ 
vtklibproj-9.3.lib\ 
vtklibxml2-9.3.lib\ 
vtkloguru-9.3.lib\ 
vtklz4-9.3.lib\ 
vtklzma-9.3.lib\ 
vtkmetaio-9.3.lib\ 
vtknetcdf-9.3.lib\ 
vtkogg-9.3.lib\ 
vtkParallelCore-9.3.lib\ 
vtkParallelDIY-9.3.lib\ 
vtkpng-9.3.lib\ 
vtkpugixml-9.3.lib\ 
vtkRenderingAnnotation-9.3.lib\ 
vtkRenderingCellGrid-9.3.lib\ 
vtkRenderingContext2D-9.3.lib\ 
vtkRenderingContextOpenGL2-9.3.lib\ 
vtkRenderingCore-9.3.lib\ 
vtkRenderingFreeType-9.3.lib\ 
vtkRenderingGL2PSOpenGL2-9.3.lib\ 
vtkRenderingHyperTreeGrid-9.3.lib\ 
vtkRenderingImage-9.3.lib\ 
vtkRenderingLabel-9.3.lib\ 
vtkRenderingLICOpenGL2-9.3.lib\ 
vtkRenderingLOD-9.3.lib\ 
vtkRenderingOpenGL2-9.3.lib\ 
vtkRenderingQt-9.3.lib\ 
vtkRenderingSceneGraph-9.3.lib\ 
vtkRenderingUI-9.3.lib\ 
vtkRenderingVolume-9.3.lib\ 
vtkRenderingVolumeOpenGL2-9.3.lib\ 
vtkRenderingVtkJS-9.3.lib\ 
vtksqlite-9.3.lib\ 
vtksys-9.3.lib\ 
vtkTestingRendering-9.3.lib\ 
vtktheora-9.3.lib\ 
vtktiff-9.3.lib\ 
vtkverdict-9.3.lib\ 
vtkViewsContext2D-9.3.lib\ 
vtkViewsCore-9.3.lib\ 
vtkViewsInfovis-9.3.lib\ 
vtkViewsQt-9.3.lib\ 
vtkWrappingTools-9.3.lib\ 
vtkzlib-9.3.lib\ 


} 


# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target


