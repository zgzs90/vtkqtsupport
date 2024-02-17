#include <QApplication>
#include <QSurfaceFormat>
#include <QVTKOpenGLNativeWidget.h>

#include "ShareCameraQt.h"

int main(int argc, char** argv)
{
  QApplication app(argc, argv);
  // needed to ensure appropriate OpenGL context is created for VTK rendering.
  QSurfaceFormat::setDefaultFormat(QVTKOpenGLNativeWidget::defaultFormat());

  // QT Stuff

  ShareCameraQt shareCameraQt;
  shareCameraQt.show();

  return app.exec();
}
