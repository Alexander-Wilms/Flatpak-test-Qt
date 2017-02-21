#include "window.h"
#include <QLabel>

Window::Window(QWidget *parent)
    : QWidget(parent)
{
    setMinimumSize(100,100);
    setWindowTitle("Hello Flatpak");
    QLabel* label = new QLabel(this);
    label->setText("Hello Flatpak");
}

Window::~Window()
{

}
