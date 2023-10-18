#ifndef QCUSTOMPUSHBUTTON_H
#define QCUSTOMPUSHBUTTON_H

#include <QPushButton>

class QCustomPushButton : public QPushButton
{
public:
    QCustomPushButton();
    ~QCustomPushButton();

    void setText(const QString text);
};

#endif // QCUSTOMPUSHBUTTON_H
