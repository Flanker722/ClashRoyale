import processing.awt.PSurfaceAWT.SmoothCanvas;
import java.awt.geom.RoundRectangle2D;
import java.awt.Dimension;
import com.sun.awt.AWTUtilities;
import java.awt.Toolkit;
import javax.swing.JFrame;
import javax.swing.JRootPane;
import java.awt.image.BufferedImage;
import java.awt.Dimension;
import java.awt.Graphics;
import javax.swing.*;
import javax.swing.JApplet;
import java.awt.*;
import java.awt.event.*;
import java.awt.image.*;
import java.io.*;
import java.applet.*;
import javax.imageio.*;
import java.awt.event.MouseEvent;

JFrame MainWindow;
WindowBorder WindowBorder = new WindowBorder();
Startup Startup = new Startup();
HomePage HomePage = new HomePage();
Lines Lines = new Lines();

void setup() {
  MainWindow = getJFrame(getSurface());
  MainWindow.removeNotify();
  MainWindow.setUndecorated(true);
  MainWindow.addNotify();
  MainWindow.setSize(int((displayHeight-30)*0.4620), (displayHeight-80));
  surface.setSize(int((displayHeight-30)*0.4620), (displayHeight-30));
  MainWindow.setShape(new RoundRectangle2D.Double(0, 0, int((displayHeight-30)*0.4620), (displayHeight-80), 115, 115));
  MainWindow.setLocation((displayWidth/2)-((int((displayHeight-30)*0.4620))/2), 48);
  background(255);
  frameRate(2147483647);
}

void draw() {
  background(60);


  HomePage.HomePageBackground();
  Lines.Display();
  HomePage.TopContent();
  HomePage.Time();
  WindowBorder.BasicFrame();
  WindowBorder.BorderTopCurves();
}

static final JFrame getJFrame(final PSurface surf) {
  return (JFrame) ((SmoothCanvas) surf.getNative()).getFrame();
}
