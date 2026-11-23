package android.graphics;
public class Canvas {
 public RectF background; public Rect clip; public int color; public String caption; public float ratio=1f;
 public float dx,dy; public int width,height;
 public void drawRoundRect(RectF r,float rx,float ry,Paint paint){background=r;color=paint.color;}
 public int save(){return 1;}
 public boolean clipRect(Rect r){clip=new Rect(r);return true;}
 public void translate(float x,float y){dx=x;dy=y;}
 public void scale(float x,float y){ratio=x;}
 public void restoreToCount(int count){}
 public void drawCaption(String text,int w,int h){caption=text;width=w;height=h;}
}
