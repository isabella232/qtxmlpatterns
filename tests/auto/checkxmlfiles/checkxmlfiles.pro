TARGET = tst_checkxmlfiles
CONFIG += testcase
SOURCES += tst_checkxmlfiles.cpp \
           ../qxmlquery/TestFundament.cpp
QT = core gui testlib

include (../xmlpatterns.pri)

wince*: {
QT += network
addFiles.files = \
	$$QT_SOURCE_TREE/examples/sql/masterdetail/albumdetails.xml \
	$$QT_SOURCE_TREE/examples/xmlpatterns/xquery/globalVariables/globals.gccxml \
	$$QT_SOURCE_TREE/doc/src/diagrams/stylesheet/treeview.svg \
	$$QT_SOURCE_TREE/doc/src/diagrams/designer-manual/designer-mainwindow-actions.ui \
	$$QT_SOURCE_TREE/examples/tools/undo/undo.qrc
addFiles.path = xmlfiles
DEPLOYMENT += addFiles
} else {
    DEFINES += SOURCETREE=\\\"$$absolute_path(../../..)/\\\"
}
