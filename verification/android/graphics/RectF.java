package android.graphics;
public class RectF {
 public float left,top,right,bottom;
 public RectF(float l,float t,float r,float b){left=l;top=t;right=r;bottom=b;}
 public RectF(Rect o){this(o.left,o.top,o.right,o.bottom);}
 public RectF(RectF o){this(o.left,o.top,o.right,o.bottom);}
 public float width(){return right-left;} public float height(){return bottom-top;}
 public float centerX(){return (right+left)/2f;}
 public void union(RectF o){left=Math.min(o.left,left);top=Math.min(o.top,top);right=Math.max(o.right,right);bottom=Math.max(o.bottom,bottom);}
 public void roundOut(Rect r){r.set((int)Math.floor(left),(int)Math.floor(top),(int)Math.ceil(right),(int)Math.ceil(bottom));}
 public boolean intersects(float l,float t,float r,float b){return l<right&&r>left&&t<bottom&&b>top;}
}
