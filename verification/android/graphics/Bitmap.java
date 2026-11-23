package android.graphics;
public class Bitmap {
 private final java.awt.image.BufferedImage page;
 public Bitmap(java.awt.image.BufferedImage page){this.page=page;}
 public int getWidth(){return page.getWidth();}public int getHeight(){return page.getHeight();}
 public int getPixel(int x,int y){return page.getRGB(x,y);}
 public void getPixels(int[] p,int o,int s,int x,int y,int w,int h){page.getRGB(x,y,w,h,p,o,s);}
 public void setPixels(int[] p,int o,int s,int x,int y,int w,int h){page.setRGB(x,y,w,h,p,o,s);}
}
