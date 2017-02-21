#ifndef WINDOW_H
#define WINDOW_H

#include <QMainWindow>

class Window : public QWidget
{
    Q_OBJECT

public:
    explicit Window(QWidget *parent = 0);
    ~Window();
};

#endif // WINDOW_H
