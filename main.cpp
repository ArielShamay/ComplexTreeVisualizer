#include <QApplication>
#include "mainwindow.hpp"
#include <iostream>
#include <QTimer>
#include <QApplication>
#include "mainwindow.hpp"
#include <QApplication>
#include <QDebug>
#include "mainwindow.hpp"

int main(int argc, char *argv[])
{
    qDebug() << "Starting application...";
    QApplication a(argc, argv);
    MainWindow w;
    qDebug() << "MainWindow created.";
    w.show();
    qDebug() << "MainWindow shown.";
    return a.exec();
}